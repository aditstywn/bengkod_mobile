import 'dart:convert';

class InstructorClassResponseModel {
  final List<Instructor> data;
  final Meta meta;

  InstructorClassResponseModel({
    required this.data,
    required this.meta,
  });

  factory InstructorClassResponseModel.fromJson(String str) =>
      InstructorClassResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InstructorClassResponseModel.fromMap(Map<String, dynamic> json) =>
      InstructorClassResponseModel(
        data: List<Instructor>.from(
            json["data"].map((x) => Instructor.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class Instructor {
  final String identityCode;
  final String name;
  final String role;
  final String image;

  Instructor({
    required this.identityCode,
    required this.name,
    required this.role,
    required this.image,
  });

  factory Instructor.fromJson(String str) =>
      Instructor.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Instructor.fromMap(Map<String, dynamic> json) => Instructor(
        identityCode: json["identity_code"],
        name: json["name"],
        role: json["role"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "identity_code": identityCode,
        "name": name,
        "role": role,
        "image": image,
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
