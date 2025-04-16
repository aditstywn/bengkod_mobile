import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/response/profile_response_model.dart';

class ProfileRemoteDatasorce {
  Future<Either<String, ProfileResponseModel>> getProfile() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrlAuth}/profile'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(ProfileResponseModel.fromJson(response.body));
      } else {
        return const Left('Gagal mendapatkan data profile');
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data profile');
    }
  }
}
