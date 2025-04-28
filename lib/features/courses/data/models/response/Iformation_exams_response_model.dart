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
  final List<Exam>? exams;

  Data({
    this.exams,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        exams: json["exams"] == null
            ? []
            : List<Exam>.from(json["exams"]!.map((x) => Exam.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "exams": exams == null
            ? []
            : List<dynamic>.from(exams!.map((x) => x.toMap())),
      };
}

class Exam {
  final int? id;
  final int? durationMinutes;
  final String? status;
  final String? startTime;
  final String? endTime;
  final int? score;
  final int? correctAnswers;
  final int? wrongAnswers;
  final DateTime? date;
  final String? result;

  Exam({
    this.id,
    this.durationMinutes,
    this.status,
    this.startTime,
    this.endTime,
    this.score,
    this.correctAnswers,
    this.wrongAnswers,
    this.date,
    this.result,
  });

  factory Exam.fromJson(String str) => Exam.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Exam.fromMap(Map<String, dynamic> json) => Exam(
        id: json["id"],
        durationMinutes: json["duration_minutes"],
        status: json["status"],
        startTime: json["start_time"],
        endTime: json["end_time"],
        score: json["score"],
        correctAnswers: json["correct_answers"],
        wrongAnswers: json["wrong_answers"],
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        result: json["result"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "duration_minutes": durationMinutes,
        "status": status,
        "start_time": startTime,
        "end_time": endTime,
        "score": score,
        "correct_answers": correctAnswers,
        "wrong_answers": wrongAnswers,
        "date":
            "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
        "result": result,
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
