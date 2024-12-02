// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AssignmentResponseModel {
  final List<Assignment> data;
  final Meta meta;

  AssignmentResponseModel({
    required this.data,
    required this.meta,
  });

  factory AssignmentResponseModel.fromJson(String str) =>
      AssignmentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AssignmentResponseModel.fromMap(Map<String, dynamic> json) =>
      AssignmentResponseModel(
        data: List<Assignment>.from(
            json["data"].map((x) => Assignment.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class Assignment {
  final int id;
  final int? idClass;
  final String? titleClass;
  final String title;
  final String description;
  final DateTime startTime;
  final DateTime deadline;
  final bool isUploaded;
  final List<dynamic> tasks;

  Assignment({
    required this.id,
    this.idClass,
    this.titleClass,
    required this.title,
    required this.description,
    required this.startTime,
    required this.deadline,
    required this.isUploaded,
    required this.tasks,
  });

  factory Assignment.fromJson(String str) =>
      Assignment.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Assignment.fromMap(Map<String, dynamic> json) => Assignment(
        id: json["id"],
        idClass: null,
        titleClass: null,
        title: json["title"],
        description: json["description"],
        startTime: DateTime.parse(json["start_time"]),
        deadline: DateTime.parse(json["deadline"]),
        isUploaded: json["is_uploaded"],
        tasks: List<dynamic>.from(json["tasks"].map((x) => x)),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "id_class": idClass,
        "title_class": titleClass,
        "title": title,
        "description": description,
        "start_time": startTime.toIso8601String(),
        "deadline": deadline.toIso8601String(),
        "is_uploaded": isUploaded,
        "tasks": List<dynamic>.from(tasks.map((x) => x)),
      };

  Assignment copyWith({
    int? idClass,
    String? titleClass,
  }) {
    return Assignment(
      id: id,
      idClass: idClass ?? this.idClass,
      titleClass: titleClass ?? this.titleClass,
      title: title,
      description: description,
      startTime: startTime,
      deadline: deadline,
      isUploaded: isUploaded,
      tasks: tasks,
    );
  }
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
