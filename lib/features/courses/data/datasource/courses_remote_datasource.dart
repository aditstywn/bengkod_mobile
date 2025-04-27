import 'dart:convert';

import '../models/request/feedback_request_model.dart';
import '../models/response/Iformation_exams_response_model.dart';
import '../models/response/create_exam_response_model.dart';
import '../models/response/detail_exams_information_response_model.dart';
import '../models/response/feedback_response_model.dart';
import '../models/response/get_certificate_response_model.dart';
import '../models/response/start_exam_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/request/answer_request_model.dart';
import '../models/response/answer_response_model.dart';
import '../models/response/article_response_model.dart';
import '../models/response/courses_response_model.dart';
import '../models/response/finis_answer_response_model.dart';
import '../models/response/generate_certificate_response_model.dart';
import '../models/response/lesson_response_model.dart';

class CoursesRemoteDatasource {
  Future<Either<String, CoursesResponseModel>> getCourses(int idClass) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/$idClass/courses'),
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
        Uri.parse('${Url.baseUrl}/course/$idCourses/articles'),
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
        Uri.parse('${Url.baseUrl}/course/$idCourses/articles/$idArticle'),
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

  Future<Either<String, CreateExamResponseModel>> createExams(
      int idCourses) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/course/$idCourses/exams'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 201) {
        return Right(CreateExamResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data ujian');
    }
  }

  Future<Either<String, StartExamResponseModel>> startExams(
      int idCourses, int? page) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/course/$idCourses/exams?page=$page'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(StartExamResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal memulai ujian');
    }
  }

  Future<Either<String, AnswerResponseModel>> answer(
      AnswerRequestModel answer, int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/course/$idCourse/exams/answer'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: answer.toJson(),
      );

      if (response.statusCode == 201) {
        return Right(AnswerResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mengirim jawaban');
    }
  }

  Future<Either<String, FinishAnswerResponseModel>> finish(int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/course/$idCourse/finish-exams'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(FinishAnswerResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mengirim jawaban');
    }
  }

  Future<Either<String, DetailExamsInformationResponseModel>>
      detailIformationExams(int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/course/$idCourse/detail-exam-informations'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(
            DetailExamsInformationResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan detail iformasi ujian');
    }
  }

  Future<Either<String, InformartionExamsResponseModel>> iformationExams(
      int idCourse, int? page) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourse/exam-informations?page=$page'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(InformartionExamsResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan iformasi ujian');
    }
  }

  Future<Either<String, FeedbackResponseModel>> feedback(
      int idCourse, FeedbackRequestModel feedback) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/course/$idCourse/feedback'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: feedback.toJson(),
      );

      if (response.statusCode == 201) {
        return Right(FeedbackResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal memberikan feedback');
    }
  }

  Future<Either<String, GenerateCertificateResponseModel>> generateCertificate(
      int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/course/$idCourse/certificate'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 201) {
        return Right(GenerateCertificateResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan sertifikat');
    }
  }

  Future<Either<String, GetCertificateResponseModel>> getCertificate(
      int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/course/$idCourse/certificate'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(GetCertificateResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan sertifikat');
    }
  }
}
