import 'dart:convert';

class FinishAnswerResponseModel {
  final Data? data;
  final Meta? meta;

  FinishAnswerResponseModel({
    this.data,
    this.meta,
  });

  factory FinishAnswerResponseModel.fromJson(String str) =>
      FinishAnswerResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FinishAnswerResponseModel.fromMap(Map<String, dynamic> json) =>
      FinishAnswerResponseModel(
        data: json["data"] == null ? null : Data.fromMap(json["data"]),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data?.toMap(),
        "meta": meta?.toMap(),
      };
}

class Data {
  final String? student;
  final String? course;
  final String? duration;
  final String? status;
  final DateTime? startTime;
  final DateTime? endTime;
  final int? totalCorrect;
  final int? totalWrong;
  final int? score;

  Data({
    this.student,
    this.course,
    this.duration,
    this.status,
    this.startTime,
    this.endTime,
    this.totalCorrect,
    this.totalWrong,
    this.score,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        student: json["student"],
        course: json["course"],
        duration: json["duration"],
        status: json["status"],
        startTime: json["start_time"] == null
            ? null
            : DateTime.parse(json["start_time"]),
        endTime:
            json["end_time"] == null ? null : DateTime.parse(json["end_time"]),
        totalCorrect: json["total_correct"],
        totalWrong: json["total_wrong"],
        score: json["score"],
      );

  Map<String, dynamic> toMap() => {
        "student": student,
        "course": course,
        "duration": duration,
        "status": status,
        "start_time": startTime?.toIso8601String(),
        "end_time": endTime?.toIso8601String(),
        "total_correct": totalCorrect,
        "total_wrong": totalWrong,
        "score": score,
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
