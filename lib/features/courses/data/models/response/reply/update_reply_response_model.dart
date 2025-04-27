import 'dart:convert';

class UpdateReplyResponseModel {
  final Meta? meta;

  UpdateReplyResponseModel({
    this.meta,
  });

  factory UpdateReplyResponseModel.fromJson(String str) =>
      UpdateReplyResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdateReplyResponseModel.fromMap(Map<String, dynamic> json) =>
      UpdateReplyResponseModel(
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
