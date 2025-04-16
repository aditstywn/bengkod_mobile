import 'dart:convert';

import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/request/update_password_request_model.dart';
import '../models/response/update_password_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';

class SettingsRemoteDatasource {
  Future<Either<String, UpdatePasswordResponseModel>> updatePassword(
      UpdatePasswordRequestModel updatePasswordRequestModel) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.put(
        Uri.parse('${Url.baseUrlAuth}/profile'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: updatePasswordRequestModel.toJson(),
      );

      if (response.statusCode == 200) {
        return Right(UpdatePasswordResponseModel.fromJson(response.body));
      } else if (response.statusCode == 400) {
        return const Left('Password Salah');
      } else {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);
        final Map<String, dynamic> errorData = responseBody['meta']['error'];
        final String errorMessage;

        if (errorData.containsKey('retype_password') &&
            errorData['retype_password'].contains(
                "The retype password field must match new password.")) {
          errorMessage = 'Konfirmasi Password Salah';
        } else if (errorData.containsKey('new_password') &&
            errorData['new_password'].contains(
                "The new password field must be at least 8 characters.")) {
          errorMessage = 'Password Baru Minimal 8 Karakter';
        } else if (errorData.containsKey('old_password') &&
            errorData['old_password'].contains(
                "The old password field must be at least 8 characters.")) {
          errorMessage = 'Password Minimal 8 Karakter';
        } else {
          errorMessage = 'Update Password Gagal';
        }

        return Left(errorMessage);
      }
    } catch (e) {
      return const Left('Update Password Gagal');
    }
  }
}
