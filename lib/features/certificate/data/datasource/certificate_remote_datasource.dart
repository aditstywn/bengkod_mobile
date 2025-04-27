import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/response/all_certificate_response_model.dart';

class CertificateRemoteDatasource {
  Future<Either<String, AllCertificateResponseModel>> certificate(
      String? search) async {
    try {
      final uri = Uri.parse(
              'https://devbengkod.natagw.my.id/api/v2/mobile/certificates')
          .replace(queryParameters: {
        if (search != null && search.isNotEmpty) 'search_course': search,
      });
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        uri,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AllCertificateResponseModel.fromJson(response.body));
      } else {
        final error = json.decode(response.body);
        return left(error['meta']['error']);
      }
    } catch (e) {
      return const Left('Gagal mendapatkan data sertifikat');
    }
  }
}
