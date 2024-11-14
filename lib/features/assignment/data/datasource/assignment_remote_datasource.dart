// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:bengkod_mobile_app/features/assignment/data/models/response/submit_asignment_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as p;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/request/upload_task_request_model.dart';
import '../models/response/assignment_response_model.dart';
import '../models/response/class_assignment_response_model.dart';
import '../models/response/detail_aasigment_response_model.dart';
import '../models/response/upload_task_response_model.dart';

class AssignmentRemoteDatasource {
  Future<Either<String, ClassAssignmentResponseModel>>
      getClassAssignment() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/api/v1/mobile/student/assignment/classroom'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ClassAssignmentResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data classAssignment');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data classAssignment');
    }
  }

  Future<Either<String, AssignmentResponseModel>> getAssignment(int id) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/assignment/classroom/$id/assignments?paginate=10'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AssignmentResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data assignment');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data assignment');
    }
  }

  Future<Either<String, DetailAssignmentResponseModel>> getDetailAssignment(
      int idClass, int idAssignment) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/assignment/classroom/$idClass/assignments/$idAssignment/detail'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(DetailAssignmentResponseModel.fromJson(response.body));
      } else {
        // return const Left('Gagal mendapatkan data detailAssignment');
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        final String errorMessage = responseBody['meta']['error'] ?? '';
        return Left(errorMessage);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data detailAssignment');
    }
  }

  Future<Either<String, UploadTaskResponseModel>> uploadTask(int idClass,
      int idAssignment, UploadTaskRequestModel uploadTaskRequestModel) async {
    try {
      final token = await AuthLocalDatasource().getToken();

      var headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };

      var request = http.MultipartRequest(
        'POST',
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/assignment/classroom/$idClass/assignments/$idAssignment/task'),
      );

      request.fields.addAll(uploadTaskRequestModel.toMap());

      request.files.add(await http.MultipartFile.fromPath(
          'answer_file', uploadTaskRequestModel.file.path.toString()));

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      final body = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return Right(UploadTaskResponseModel.fromJson(body));
      } else {
        return const Left('Gagal upload task');
      }
    } catch (e) {
      return const Left('Gagal upload task');
    }
  }

  Future<Either<String, SubmitAssignmentResponseModel>> submitTask(
      int idClass, int idAssignment) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/assignment/classroom/$idClass/assignments/$idAssignment/task/submit'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(SubmitAssignmentResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal Submit');
      }
    } catch (e) {
      return const Left('Gagal Submit');
    }
  }

  // Future<void> downloadTask(String url) async {
  //   try {
  //     var response = await http.get(Uri.parse(url));

  //     if (response.statusCode == 200) {
  //       Directory appDocDir = Directory('/storage/emulated/0/Download');
  //       String filePath = '${appDocDir.path}/file.jpg';

  //       File file = File(filePath);
  //       await file.writeAsBytes(response.bodyBytes);

  //       print("File berhasil diunduh dan disimpan di $filePath");
  //     } else {
  //       print("Gagal mendownload file. Status code: ${response.statusCode}");
  //     }
  //   } catch (e) {
  //     print("Terjadi error: $e");
  //   }
  // }

  Future<void> downloadTask(String url) async {
    try {
      var response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Directory appDocDir = Directory('/storage/emulated/0/Download');

        String fileName = p
            .basename(url)
            .replaceAll(RegExp(r'[^a-zA-Z0-9\.]'), '_')
            .replaceAll('_filename_', '');
        String fileExtension = p.extension(fileName);

        String filePath = '${appDocDir.path}/file$fileExtension';

        print('fileExtension: $fileExtension');

        int counter = 1;
        while (await File(filePath).exists()) {
          filePath = '${appDocDir.path}/file($counter)$fileExtension';
          counter++;
        }

        File file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);

        // ignore: duplicate_ignore
        // ignore: avoid_print
        print("File berhasil diunduh dan disimpan di $filePath");
      } else {
        print("Gagal mendownload file. Status code: ${response.statusCode}");
      }
    } catch (e) {
      print("Terjadi error: $e");
    }
  }
}
