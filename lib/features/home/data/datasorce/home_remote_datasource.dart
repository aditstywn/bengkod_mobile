import 'package:bengkod_mobile_app/features/home/data/models/response/active_course_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/response/latest_assignment_response_model.dart';

class HomeRemoteDatasource {
  Future<Either<String, LatestAssignmentResponseModel>>
      getLatestAssignment() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/dashboard/latest-assignment'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(LatestAssignmentResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data assigment');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data assigment');
    }
  }

  Future<Either<String, ActiveCourseResponseModel>> getActiveCourse() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/dashboard/active-course'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ActiveCourseResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data course');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data course');
    }
  }
}
