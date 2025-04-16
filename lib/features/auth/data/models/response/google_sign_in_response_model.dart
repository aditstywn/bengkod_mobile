import 'dart:convert';

class GoogleSignInResponseModel {
  final Data? data;
  final String? token;
  final Meta? meta;

  GoogleSignInResponseModel({
    this.data,
    this.token,
    this.meta,
  });

  factory GoogleSignInResponseModel.fromJson(String str) =>
      GoogleSignInResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GoogleSignInResponseModel.fromMap(Map<String, dynamic> json) =>
      GoogleSignInResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        token: json["token"],
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "token": token,
        "meta": meta?.toMap(),
      };
}

class Data {
  final int? id;
  final String? name;
  final String? email;
  final String? role;

  Data({
    this.id,
    this.name,
    this.email,
    this.role,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "email": email,
        "role": role,
      };
}

class Meta {
  final int? statusCode;
  final bool? success;
  final String? message;
  final Pagination? pagination;

  Meta({
    this.statusCode,
    this.success,
    this.message,
    this.pagination,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        statusCode: json["status_code"],
        success: json["success"],
        message: json["message"],
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "status_code": statusCode,
        "success": success,
        "message": message,
        "pagination": pagination?.toMap(),
      };
}

class Pagination {
  Pagination();

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination();

  Map<String, dynamic> toMap() => {};
}
