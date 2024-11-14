import '../models/response/logout_response_model.dart';
import '../models/response/refresh_token_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../models/request/login_request_model.dart';
import '../models/response/login_response_model.dart';
import 'auth_local_datasource.dart';

class AuthRemoteDatasource {
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/api/v1/auth/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        body: loginRequestModel.toJson(),
      );

      if (response.statusCode == 200) {
        return Right(LoginResponseModel.fromJson(response.body));
      } else {
        return const Left('Login Gagal');
      }
    } catch (e) {
      return const Left('Login Gagal');
    }
  }

  // logout
  Future<Either<String, LogoutResponseModel>> logout() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/api/v1/auth/logout'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(LogoutResponseModel.fromJson(response.body));
      } else {
        return const Left('Logout Gagal');
      }
    } catch (e) {
      return const Left('Logout Gagal');
    }
  }

  Future<Either<String, RefreshTokenResponseModel>> refreshToken() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/api/v1/auth/refresh-token'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(RefreshTokenResponseModel.fromJson(response.body));
      } else {
        // return const Left('Refresh Token Gagal');
        return Left(response.body);
      }
    } catch (e) {
      return const Left('Refresh Token Gagal');
    }
  }
}
