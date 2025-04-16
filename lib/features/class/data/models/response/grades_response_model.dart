import 'dart:convert';

class GradesResponseModel {
  final Data? data;
  final Meta? meta;

  GradesResponseModel({
    this.data,
    this.meta,
  });

  factory GradesResponseModel.fromJson(String str) =>
      GradesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GradesResponseModel.fromMap(Map<String, dynamic> json) =>
      GradesResponseModel(
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
  final int? studentId;
  final int? taskScore;
  final int? utsScore;
  final double? uasScore;
  final int? finalScore;
  final GradeInfo? gradeInfo;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Data({
    this.id,
    this.classroomId,
    this.studentId,
    this.taskScore,
    this.utsScore,
    this.uasScore,
    this.finalScore,
    this.gradeInfo,
    this.createdAt,
    this.updatedAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        classroomId: json["classroom_id"],
        studentId: json["student_id"],
        taskScore: json["task_score"],
        utsScore: json["uts_score"],
        uasScore: json["uas_score"]?.toDouble(),
        finalScore: json["final_score"],
        gradeInfo: json["grade_info"] == null
            ? null
            : GradeInfo.fromMap(json["grade_info"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "classroom_id": classroomId,
        "student_id": studentId,
        "task_score": taskScore,
        "uts_score": utsScore,
        "uas_score": uasScore,
        "final_score": finalScore,
        "grade_info": gradeInfo?.toMap(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class GradeInfo {
  final String? grade;
  final String? description;

  GradeInfo({
    this.grade,
    this.description,
  });

  factory GradeInfo.fromJson(String str) => GradeInfo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory GradeInfo.fromMap(Map<String, dynamic> json) => GradeInfo(
        grade: json["grade"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "grade": grade,
        "description": description,
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
