import 'dart:convert';

class UploadTaskResponseModel {
  final Data? data;
  final Meta? meta;

  UploadTaskResponseModel({
    this.data,
    this.meta,
  });

  factory UploadTaskResponseModel.fromJson(String str) =>
      UploadTaskResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UploadTaskResponseModel.fromMap(Map<String, dynamic> json) =>
      UploadTaskResponseModel(
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
  final String? answerFile;
  final String? comment;

  Data({
    this.id,
    this.answerFile,
    this.comment,
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
