import 'dart:convert';

class ShowDiscussionsResponseModel {
  final Data? data;
  final Meta? meta;

  ShowDiscussionsResponseModel({
    this.data,
    this.meta,
  });

  factory ShowDiscussionsResponseModel.fromJson(String str) =>
      ShowDiscussionsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ShowDiscussionsResponseModel.fromMap(Map<String, dynamic> json) =>
      ShowDiscussionsResponseModel(
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
  final int? courseId;
  final int? articleId;
  final Student? student;
  final String? title;
  final String? comment;
  final List<String>? images;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    this.id,
    this.courseId,
    this.articleId,
    this.student,
    this.title,
    this.comment,
    this.images,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        courseId: json["course_id"],
        articleId: json["article_id"],
        student:
            json["student"] == null ? null : Student.fromMap(json["student"]),
        title: json["title"],
        comment: json["comment"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "course_id": courseId,
        "article_id": articleId,
        "student": student?.toMap(),
        "title": title,
        "comment": comment,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Student {
  final int? id;
  final String? name;
  final String? role;
  final String? image;

  Student({
    this.id,
    this.name,
    this.role,
    this.image,
  });

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "role": role,
        "image": image,
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
