import 'dart:convert';

import 'package:bengkod_mobile_app/features/presence/data/models/request/izin_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

import '../../../../core/config/url.dart';
import '../../../auth/data/datasource/auth_local_datasource.dart';
import '../models/request/scan_qr_request_model.dart';
import '../models/response/absence_history_response_model.dart';
import '../models/response/absence_response_model.dart';
import '../models/response/attendace_history_response_model.dart';
import '../models/response/presences_response_model.dart';
import '../models/response/scan_qr_response_model.dart';

class PresenceRemoteDatasource {
  Future<Either<String, ScanQrResponseModel>> scanQr(
      ScanQrRequestModel scanQr) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.post(
        Uri.parse('${Url.baseUrl}/presences/scan-qr'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: scanQr.toJson(),
      );

      if (response.statusCode == 200) {
        return Right(ScanQrResponseModel.fromJson(response.body));
      } else if (response.statusCode == 404) {
        return const Left('Kode QR tidak valid');
      } else if (response.statusCode == 400) {
        return const Left(
            'Anda sudah mengisikan data kehadiran pada pertemuan ini');
      } else {
        return const Left('Scan Qr Gagal');
      }
    } catch (e) {
      return const Left('Scan Qr Gagal');
    }
  }

  Future<Either<String, PresencesResponseModel>> getPresences(
      int idClass) async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/classroom/$idClass/presences'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(PresencesResponseModel.fromJson(response.body));
      } else {
        return const Left('Get Presences Gagal');
      }
    } catch (e) {
      return const Left('Get Presences Gagal');
    }
  }

  Future<Either<String, AttendanceHistoryResponseModel>>
      getAttendanceHistory() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/presences/attendances/history'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AttendanceHistoryResponseModel.fromJson(response.body));
      } else {
        return const Left('Get Attendance History Gagal');
      }
    } catch (e) {
      return const Left('Get Attendance History Gagal');
    }
  }

  Future<Either<String, AbsenceHistoryResponseModel>>
      getAbsenceHistory() async {
    try {
      final token = await AuthLocalDatasource().getToken();
      final response = await http.get(
        Uri.parse('${Url.baseUrl}/presences/absences/history'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(AbsenceHistoryResponseModel.fromJson(response.body));
      } else {
        return const Left('Get Absence History Gagal');
      }
    } catch (e) {
      return const Left('Get Absence History Gagal');
    }
  }

  Future<Either<String, AbsenceResponseModel>> absence(
      IzinRequestModel izin) async {
    try {
      final token = await AuthLocalDatasource().getToken();

      var headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      };

      var request = http.MultipartRequest(
        'POST',
        Uri.parse('${Url.baseUrl}/presences/absences/store'),
      );

      request.fields.addAll(izin.toMap());

      request.files.add(
        await http.MultipartFile.fromPath(
          'attachment',
          izin.file.path.toString(),
        ),
      );

      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      final body = await response.stream.bytesToString();

      if (response.statusCode == 200) {
        return Right(AbsenceResponseModel.fromJson(body));
      } else {
        final bodyJson = jsonDecode(body);

        // Ambil pesan error paling pertama dari body jika ada
        final error = bodyJson['meta']?['error'];
        String errorMessage = 'Gagal kirim izin';

        if (error is Map && error.containsKey('absence_type')) {
          final messages = error['absence_type'];
          if (messages is List && messages.isNotEmpty) {
            errorMessage = messages.join(', ');
          }
        }

        return Left(errorMessage);
      }
    } catch (e) {
      return const Left('Gagal kirim izin');
    }
  }
}
