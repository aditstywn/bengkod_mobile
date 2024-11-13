import 'dart:convert';

class SubmitAssignmentResponseModel {
  final Data data;
  final Meta meta;

  SubmitAssignmentResponseModel({
    required this.data,
    required this.meta,
  });

  factory SubmitAssignmentResponseModel.fromJson(String str) =>
      SubmitAssignmentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory SubmitAssignmentResponseModel.fromMap(Map<String, dynamic> json) =>
      SubmitAssignmentResponseModel(
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
  final String answerFile;
  final String comment;

  Data({
    required this.id,
    required this.answerFile,
    required this.comment,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        answerFile: json["answer_file"],
        comment: json["comment"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "answer_file": answerFile,
        "comment": comment,
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
