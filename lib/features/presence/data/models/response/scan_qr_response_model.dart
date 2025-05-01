import 'dart:convert';

class ScanQrResponseModel {
  final Data? data;
  final Meta? meta;

  ScanQrResponseModel({
    this.data,
    this.meta,
  });

  factory ScanQrResponseModel.fromJson(String str) =>
      ScanQrResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ScanQrResponseModel.fromMap(Map<String, dynamic> json) =>
      ScanQrResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "meta": meta?.toMap(),
      };
}

class Data {
  final int? presenceId;
  final String? longitude;
  final String? latitude;
  final String? statusExistence;

  Data({
    this.presenceId,
    this.longitude,
    this.latitude,
    this.statusExistence,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        presenceId: json["presence_id"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        statusExistence: json["status_existence"],
      );

  Map<String, dynamic> toMap() => {
        "presence_id": presenceId,
        "longitude": longitude,
        "latitude": latitude,
        "status_existence": statusExistence,
      };
}

class Meta {
  final int? statusCode;
  final bool? success;
  final String? message;

  Meta({
    this.statusCode,
    this.success,
    this.message,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        statusCode: json["status_code"],
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "status_code": statusCode,
        "success": success,
        "message": message,
      };
}
