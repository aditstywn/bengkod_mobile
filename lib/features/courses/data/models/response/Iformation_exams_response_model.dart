import 'dart:convert';

class InformartionExamsResponseModel {
  final Data? data;
  final Meta? meta;

  InformartionExamsResponseModel({
    this.data,
    this.meta,
  });

  factory InformartionExamsResponseModel.fromJson(String str) =>
      InformartionExamsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory InformartionExamsResponseModel.fromMap(Map<String, dynamic> json) =>
      InformartionExamsResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "meta": meta?.toMap(),
      };
}

class Data {
  final Student? student;
  final Course? course;
  final List<Exam>? exams;

  Data({
    this.student,
    this.course,
    this.exams,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        student:
            json["student"] == null ? null : Student.fromMap(json["student"]),
        course: json["course"] == null ? null : Course.fromMap(json["course"]),
        exams: json["exams"] == null
            ? []
            : List<Exam>.from(json["exams"]!.map((x) => Exam.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "student": student?.toMap(),
        "course": course?.toMap(),
        "exams": exams == null
            ? []
            : List<dynamic>.from(exams!.map((x) => x.toMap())),
      };
}

class Course {
  final String? name;
  final String? description;

  Course({
    this.name,
    this.description,
  });

  factory Course.fromJson(String str) => Course.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Course.fromMap(Map<String, dynamic> json) => Course(
        name: json["name"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "description": description,
      };
}

class Exam {
  final int? durationMinutes;
  final String? status;
  final DateTime? startTime;
  final DateTime? endTime;
  final int? score;
  final int? correctAnswers;
  final int? wrongAnswers;
  final String? result;

  Exam({
    this.durationMinutes,
    this.status,
    this.startTime,
    this.endTime,
    this.score,
    this.correctAnswers,
    this.wrongAnswers,
    this.result,
  });

  factory Exam.fromJson(String str) => Exam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Exam.fromMap(Map<String, dynamic> json) => Exam(
        durationMinutes: json["duration_minutes"],
        status: json["status"],
        startTime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        endTime:
            json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
        score: json["score"],
        correctAnswers: json["correct_answers"],
        wrongAnswers: json["wrong_answers"],
        result: json["result"],
      );

  Map<String, dynamic> toMap() => {
        "duration_minutes": durationMinutes,
        "status": status,
        "start_time": startTime?.toIso8601String(),
        "end_time": endTime?.toIso8601String(),
        "score": score,
        "correct_answers": correctAnswers,
        "wrong_answers": wrongAnswers,
        "result": result,
      };
}

class Student {
  final String? name;

  Student({
    this.name,
  });

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
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
  final int? total;
  final int? count;
  final int? perPage;
  final int? currentPage;
  final int? totalPages;
  final Links? links;

  Pagination({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
    this.links,
  });

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
        links: json["links"] == null ? null : Links.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "links": links?.toMap(),
      };
}

class Links {
  final String? next;
  final dynamic previous;

  Links({
    this.next,
    this.previous,
  });

  factory Links.fromJson(String str) => Links.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Links.fromMap(Map<String, dynamic> json) => Links(
        next: json["next"],
        previous: json["previous"],
      );

  Map<String, dynamic> toMap() => {
        "next": next,
        "previous": previous,
      };
}
