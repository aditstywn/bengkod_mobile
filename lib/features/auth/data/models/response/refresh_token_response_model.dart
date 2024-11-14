import 'dart:convert';

class RefreshTokenResponseModel {
  final Data data;
  final Meta meta;

  RefreshTokenResponseModel({
    required this.data,
    required this.meta,
  });

  factory RefreshTokenResponseModel.fromJson(String str) =>
      RefreshTokenResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory RefreshTokenResponseModel.fromMap(Map<String, dynamic> json) =>
      RefreshTokenResponseModel(
        data: Data.fromMap(json["data"]),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "meta": meta.toMap(),
      };
}

class Data {
  final String token;

  Data({
    required this.token,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "token": token,
      };
}

class Meta {
  final int statusCode;
  final bool success;
  final String message;

  Meta({
    required this.statusCode,
    required this.success,
    required this.message,
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
