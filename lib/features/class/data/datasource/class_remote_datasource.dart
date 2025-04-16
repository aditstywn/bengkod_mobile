import 'package:bengkod_mobile_app/features/class/data/models/response/student_class_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/response/class_response_model.dart';
import '../models/response/information_class_response_model.dart';
import '../models/response/instructor_class_response_model.dart';

class ClassRemoteDatasource {
  Future<Either<String, ClassResponseModel>> getClass() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ClassResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data class');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data class');
    }
  }

  Future<Either<String, InstructorClassResponseModel>> getInstructor(
      int id) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/$id/instructors'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(InstructorClassResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data instructor');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data instructor');
    }
  }

  Future<Either<String, InformationClassResponseModel>> getInformation(
      int id) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/$id/informations'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(InformationClassResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data information');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data information');
    }
  }

  Future<Either<String, StudentClassResponseModel>> getStudent(int id) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/$id/classmates'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(StudentClassResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data student');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data student');
    }
  }
}
