import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/response/article_response_model.dart';
import '../models/response/courses_response_model.dart';
import '../models/response/lesson_response_model.dart';

class CoursesRemoteDatasource {
  Future<Either<String, CoursesResponseModel>> getCourses(int idClass) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/classroom/$idClass/courses'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(CoursesResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data courses');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data courses');
    }
  }

  Future<Either<String, LessonResponseModel>> getLesson(int idCourses) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/course/$idCourses/articles'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(LessonResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data lesson');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data lesson');
    }
  }

  Future<Either<String, ArticleResponseModel>> getArticle(
      int idCourses, int idArticle) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/api/v1/mobile/student/course/$idCourses/articles/$idArticle'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ArticleResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data article');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data article');
    }
  }
}
