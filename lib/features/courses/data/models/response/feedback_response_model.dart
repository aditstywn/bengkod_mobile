import 'dart:convert';

class FeedbackResponseModel {
  final Data? data;
  final Meta? meta;

  FeedbackResponseModel({
    this.data,
    this.meta,
  });

  factory FeedbackResponseModel.fromJson(String str) =>
      FeedbackResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeedbackResponseModel.fromMap(Map<String, dynamic> json) =>
      FeedbackResponseModel(
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
  final int? rating;
  final String? comment;
  final DateTime? createdAt;

  Data({
    this.id,
    this.rating,
    this.comment,
    this.createdAt,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        rating: json["rating"],
        comment: json["comment"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "rating": rating,
        "comment": comment,
        "created_at": createdAt?.toIso8601String(),
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
