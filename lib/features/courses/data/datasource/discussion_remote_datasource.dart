import 'dart:convert';

import '../models/request/create_discussions_request_model.dart';
import '../models/request/update_discussions_request_model .dart';
import '../models/response/discussions/delete_discussions_response_model.dart';

import '../models/response/discussions/create_discussions_response_model.dart';
import '../models/response/discussions/update_discussions_response_model.dart';
import '../models/response/reply/update_reply_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/request/add_reply_request_model.dart';
import '../models/response/discussions/discussion_response_model.dart';
import '../models/response/discussions/show_discussions_response_model.dart';
import '../models/response/reply/add_reply_response_model.dart';
import '../models/response/reply/all_reply_response_model.dart';

class DiscussionRemoteDatasource {
  Future<Either<String, DiscussionsResponseModel>> discussion(
      int idCourses, int? page, String? search, int? idArticle) async {
    try {
      final token = await AuthLocalDatasource().getToken();

      final uri = Uri.parse('${Url.baseUrl}/course/$idCourses/discussions')
          .replace(queryParameters: {
        'page': page?.toString(),
        if (search != null && search.isNotEmpty) 'article': search,
        if (idArticle != null) 'article_id': idArticle.toString(),
      });
      final response = await http.get(
        // Uri.parse(
        //     '${Url.baseUrl}/course/$idCourses/discussions?page=$page&article=$search&article_id=$idArticle'),
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(DiscussionsResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data diskusi');
    }
  }

  Future<Either<String, DiscussionsResponseModel>> discussionSearch(
      int idCourses, int? page, String search) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourses/discussions?page=$page&article=$search'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(DiscussionsResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data diskusi');
    }
  }

  Future<Either<String, ShowDiscussionsResponseModel>> detailDiscussion(
      int idCourses, int idDiscussion) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ShowDiscussionsResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data detail diskusi');
    }
  }

  Future<Either<String, DeleteDiscussionsResponseModel>> deletDiscussion(
      int idCourses, int idDiscussion) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.delete(
        Uri.parse('${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(DeleteDiscussionsResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal menghapus diskusi');
    }
  }

  Future<Either<String, CreateDiscussionsResponseModel>> createDiscussions(
      CreateDiscussionsRequestModel discussions, int idCourse) async {
    try {
      final token = await AuthLocalDatasource().getToken();

      var headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };

      var request = http.MultipartRequest(
        'POST',
        Uri.parse('${Url.baseUrl}/course/$idCourse/discussions'),
      );

      // final fields = discussions.toMap();
      // // hapus 'images' biar tidak ikut masuk fields  ketika images null
      // fields.remove('images');
      // request.fields.addAll(fields);

      request.fields.addAll(discussions.toMap());

      for (var image in discussions.images ?? []) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'images[]',
            image.path,
          ),
        );
      }

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      final body = await response.stream.bytesToString();

      if (response.statusCode == 201) {
        return Right(CreateDiscussionsResponseModel.fromJson(body));
      } else {
        final error = json.decode(body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal membuat diskusi');
    }
  }

  Future<Either<String, UpdateDiscussionsResponseModel>> updateDiscussions(
      UpdateDiscussionsRequestModel discussions,
      int idCourse,
      int idDiscussions) async {
    try {
      final token = await AuthLocalDatasource().getToken();

      var headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };

      var request = http.MultipartRequest(
        'POST',
        Uri.parse('${Url.baseUrl}/course/$idCourse/discussions/$idDiscussions'),
      );

      request.fields.addAll(discussions.toMap());

      for (var image in discussions.imagesDeleted ?? []) {
        request.fields['deleted_images[]'] = image;
      }
      for (var image in discussions.images ?? []) {
        request.files.add(
          await http.MultipartFile.fromPath(
            'new_images[]',
            image.path,
          ),
        );
      }

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      final body = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return Right(UpdateDiscussionsResponseModel.fromJson(body));
      } else {
        final error = json.decode(body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal edit diskusi');
    }
  }

  Future<Either<String, AllReplyResponseModel>> allReply(
      int idCourses, int idDiscussion, int? page) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion/reply?page=$page'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AllReplyResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data komentar');
    }
  }

  Future<Either<String, AddReplyResponseModel>> addReply(
      int idCourses, int idDiscussion, AddReplyRequestModel reply) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion/reply'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: reply.toJson(),
      );

      if (response.statusCode == 201) {
        return Right(AddReplyResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal membuat komentar');
    }
  }

  Future<Either<String, UpdateReplyResponseModel>> updateReply(
      int idCourses, int idDiscussion, int idReply, String reply) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.patch(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion/reply/$idReply'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'comment_reply': reply,
        }),
      );

      if (response.statusCode == 200) {
        return Right(UpdateReplyResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal edit komentar');
    }
  }

  Future<Either<String, AllReplyResponseModel>> deleteReply(
      int idCourses, int idDiscussion, int idReply) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.delete(
        Uri.parse(
            '${Url.baseUrl}/course/$idCourses/discussions/$idDiscussion/reply/$idReply'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AllReplyResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal hapus komentar');
    }
  }
}
