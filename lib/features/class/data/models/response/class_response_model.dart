import 'dart:convert';

class ClassResponseModel {
  final List<Class>? data;
  final Meta? meta;

  ClassResponseModel({
    this.data,
    this.meta,
  });

  factory ClassResponseModel.fromJson(String str) =>
      ClassResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClassResponseModel.fromMap(Map<String, dynamic> json) =>
      ClassResponseModel(
        data: json["data"] == null
            ? []
            : List<Class>.from(json["data"]!.map((x) => Class.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
      };
}

class Class {
  final int? id;
  final String? name;
  final String? description;
  final String? timeStart;
  final String? timeEnd;
  final String? day;
  final String? room;
  final dynamic finalScore;
  final int? numberOfCourse;

  Class({
    this.id,
    this.name,
    this.description,
    this.timeStart,
    this.timeEnd,
    this.day,
    this.room,
    this.finalScore,
    this.numberOfCourse,
  });

  factory Class.fromJson(String str) => Class.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Class.fromMap(Map<String, dynamic> json) => Class(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        timeStart: json["time_start"],
        timeEnd: json["time_end"],
        day: json["day"],
        room: json["room"],
        finalScore: json["final_score"],
        numberOfCourse: json["number_of_course"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "description": description,
        "time_start": timeStart,
        "time_end": timeEnd,
        "day": day,
        "room": room,
        "final_score": finalScore,
        "number_of_course": numberOfCourse,
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
  final dynamic next;
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
