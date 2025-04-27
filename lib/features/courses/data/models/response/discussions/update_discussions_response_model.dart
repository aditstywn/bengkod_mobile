import 'dart:convert';

class UpdateDiscussionsResponseModel {
  final Meta? meta;

  UpdateDiscussionsResponseModel({
    this.meta,
  });

  factory UpdateDiscussionsResponseModel.fromJson(String str) =>
      UpdateDiscussionsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateDiscussionsResponseModel.fromMap(Map<String, dynamic> json) =>
      UpdateDiscussionsResponseModel(
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "meta": meta?.toMap(),
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
