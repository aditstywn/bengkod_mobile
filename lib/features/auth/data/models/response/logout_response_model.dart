import 'dart:convert';

class LogoutResponseModel {
  final Meta meta;

  LogoutResponseModel({
    required this.meta,
  });

  factory LogoutResponseModel.fromJson(String str) =>
      LogoutResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LogoutResponseModel.fromMap(Map<String, dynamic> json) =>
      LogoutResponseModel(
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "meta": meta.toMap(),
      };
}

class Meta {
  final bool success;
  final String message;

  Meta({
    required this.success,
    required this.message,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        success: json["success"],
        message: json["message"],
      );

  Map<String, dynamic> toMap() => {
        "success": success,
        "message": message,
      };
}
