import 'dart:convert';

class GenerateCertificateResponseModel {
  final Data? data;
  final Meta? meta;

  GenerateCertificateResponseModel({
    this.data,
    this.meta,
  });

  factory GenerateCertificateResponseModel.fromJson(String str) =>
      GenerateCertificateResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GenerateCertificateResponseModel.fromMap(Map<String, dynamic> json) =>
      GenerateCertificateResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "meta": meta?.toMap(),
      };
}

class Data {
  final int? id;
  final int? studentId;
  final String? courseId;
  final String? certificateUrl;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    this.id,
    this.studentId,
    this.courseId,
    this.certificateUrl,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        studentId: json["student_id"],
        courseId: json["course_id"],
        certificateUrl: json["certificate_url"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "student_id": studentId,
        "course_id": courseId,
        "certificate_url": certificateUrl,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
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
