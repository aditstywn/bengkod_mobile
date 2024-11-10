import 'dart:convert';

class LoginResponseModel {
  final Data data;
  final String token;
  final Meta meta;

  LoginResponseModel({
    required this.data,
    required this.token,
    required this.meta,
  });

  factory LoginResponseModel.fromJson(String str) =>
      LoginResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LoginResponseModel.fromMap(Map<String, dynamic> json) =>
      LoginResponseModel(
        data: Data.fromMap(json["data"]),
        token: json["token"],
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "token": token,
        "meta": meta.toMap(),
      };
}

class Data {
  final int id;
  final String name;
  final String email;
  final String role;

  Data({
    required this.id,
    required this.name,
    required this.email,
    required this.role,
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
  final int statusCode;
  final bool success;
  final String message;
  final Pagination pagination;

  Meta({
    required this.statusCode,
    required this.success,
    required this.message,
    required this.pagination,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        statusCode: json["status_code"],
        success: json["success"],
        message: json["message"],
        pagination: Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "status_code": statusCode,
        "success": success,
        "message": message,
        "pagination": pagination.toMap(),
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
