import 'dart:convert';

class DetailExamsInformationResponseModel {
  final Data? data;
  final Meta? meta;

  DetailExamsInformationResponseModel({
    this.data,
    this.meta,
  });

  factory DetailExamsInformationResponseModel.fromJson(String str) =>
      DetailExamsInformationResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailExamsInformationResponseModel.fromMap(
          Map<String, dynamic> json) =>
      DetailExamsInformationResponseModel(
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
  final String? title;
  final String? description;

  Data({
    this.id,
    this.title,
    this.description,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
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
