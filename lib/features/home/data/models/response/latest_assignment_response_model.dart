import 'dart:convert';

class LatestAssignmentResponseModel {
  final Data data;
  final Meta meta;

  LatestAssignmentResponseModel({
    required this.data,
    required this.meta,
  });

  factory LatestAssignmentResponseModel.fromJson(String str) =>
      LatestAssignmentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LatestAssignmentResponseModel.fromMap(Map<String, dynamic> json) =>
      LatestAssignmentResponseModel(
        data: Data.fromMap(json["data"]),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "meta": meta.toMap(),
      };
}

class Data {
  final int id;
  final int classroomId;
  final String title;
  final String description;
  final String deadline;
  final bool isUploaded;
  final List<Task> tasks;

  Data({
    required this.id,
    required this.classroomId,
    required this.title,
    required this.description,
    required this.deadline,
    required this.isUploaded,
    required this.tasks,
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
        tasks: List<Task>.from(json["tasks"].map((x) => Task.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "classroom_id": classroomId,
        "title": title,
        "description": description,
        "deadline": deadline,
        "is_uploaded": isUploaded,
        "tasks": List<dynamic>.from(tasks.map((x) => x.toMap())),
      };
}

class Task {
  final int id;
  final dynamic score;
  final bool isSubmitted;

  Task({
    required this.id,
    required this.score,
    required this.isSubmitted,
  });

  factory Task.fromJson(String str) => Task.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Task.fromMap(Map<String, dynamic> json) => Task(
        id: json["id"],
        score: json["score"],
        isSubmitted: json["is_submitted"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "score": score,
        "is_submitted": isSubmitted,
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
