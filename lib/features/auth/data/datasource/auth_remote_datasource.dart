import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';

import '../models/response/google_sign_in_response_model.dart';
import '../models/response/logout_response_model.dart';
import '../models/response/refresh_token_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../models/request/login_request_model.dart';
import '../models/response/login_response_model.dart';
import 'auth_local_datasource.dart';

class AuthRemoteDatasource {
  final GoogleSignIn _googleSignIn = GoogleSignIn(
    serverClientId: Url.clientId,
    scopes: ['email', 'profile', 'openid'],
  );
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel loginRequestModel) async {
    try {
      final response = await http.post(
        Uri.parse('${Url.baseUrlAuth}/login'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
        },
        body: loginRequestModel.toJson(),
      );

      if (response.statusCode == 200) {
        return Right(LoginResponseModel.fromJson(response.body));
      } else {
        return const Left('Email atau Password Salah');
      }
    } catch (e) {
      return const Left('Email atau Password Salah');
    }
  }

  Future<Either<String, GoogleSignInResponseModel>> googleSignIn(
      String idToken) async {
    try {
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/api/v2/mobile/student/auth/google-login'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: json.encode({
          'id_token': idToken,
        }),
      );

      if (response.statusCode == 200) {
        return right(GoogleSignInResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);

        return left(error['meta']['error']);
      }
    } catch (e) {
      return left('Login Failed');
    }
  }

  // logout
  Future<Either<String, LogoutResponseModel>> logout() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrlAuth}/logout'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        _googleSignIn.signOut();
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
        Uri.parse('${Url.baseUrlAuth}/refresh-token'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(RefreshTokenResponseModel.fromJson(response.body));
      } else {
        return const Left('Refresh Token Gagal');
      }
    } catch (e) {
      return const Left('Refresh Token Gagal');
    }
  }

  Future<bool> isTokenExpired() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      if (token.isEmpty) return true;

      final parts = token.split('.');
      if (parts.length != 3) return true;

      final payload = json.decode(
        utf8.decode(
          base64Url.decode(
            base64Url.normalize(parts[1]),
          ),
        ),
      );

      if (payload == null || payload['exp'] == null) return true;

      final exp = payload['exp'] as int;
      final now = DateTime.now().millisecondsSinceEpoch ~/ 1000;

      return exp < now;
    } catch (e) {
      return true;
    }
  }

  Future<bool> isTokenBlacklisted() async {
    try {
      final response = await http.get(
        Uri.parse('${Url.baseUrlAuth}/profile'),
        headers: {
          'Authorization': 'Bearer ${await AuthLocalDatasource().getToken()}'
        },
      );

      if (response.statusCode == 401) {
        final responseBody = jsonDecode(response.body);
        if (responseBody['meta'] != null &&
            responseBody['meta']['message'] ==
                'The token has been blacklisted') {
          return true; // Token sudah di-blacklist
        }
      }
      return false; // Token masih valid
    } catch (e) {
      return true; // Jika ada error, anggap token bermasalah
    }
  }

  Future<void> refreshAndSaveToken() async {
    try {
      final result = await refreshToken();

      result.fold(
        (failure) {
          print('Gagal memperbarui token: $failure');
        },
        (RefreshTokenResponseModel refresh) async {
          // Simpan token baru
          await AuthLocalDatasource().saveToken(refresh.data.token);
          print('Token diperbarui: ${refresh.data.token}');
        },
      );
    } catch (e) {
      print('Error saat memperbarui token: $e');
    }
  }
}
