import 'dart:convert';

class LatestAssignmentResponseModel {
  final Data? data;
  final Meta? meta;

  LatestAssignmentResponseModel({
    this.data,
    this.meta,
  });

  factory LatestAssignmentResponseModel.fromJson(String str) =>
      LatestAssignmentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LatestAssignmentResponseModel.fromMap(Map<String, dynamic> json) =>
      LatestAssignmentResponseModel(
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
  final int? classroomId;
  final String? title;
  final String? description;
  final String? deadline;
  final bool? isUploaded;
  final List<dynamic>? tasks;

  Data({
    this.id,
    this.classroomId,
    this.title,
    this.description,
    this.deadline,
    this.isUploaded,
    this.tasks,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        classroomId: json["classroom_id"],
        title: json["title"],
        description: json["description"],
        deadline: json["deadline"],
        isUploaded: json["is_uploaded"],
        tasks: json["tasks"] == null
            ? []
            : List<dynamic>.from(json["tasks"]!.map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "classroom_id": classroomId,
        "title": title,
        "description": description,
        "deadline": deadline,
        "is_uploaded": isUploaded,
        "tasks": tasks == null ? [] : List<dynamic>.from(tasks!.map((x) => x)),
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
