import 'dart:convert';

class CoursesResponseModel {
  final List<Datum> data;
  final Meta meta;

  CoursesResponseModel({
    required this.data,
    required this.meta,
  });

  factory CoursesResponseModel.fromJson(String str) =>
      CoursesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory CoursesResponseModel.fromMap(Map<String, dynamic> json) =>
      CoursesResponseModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class Datum {
  final int id;
  final String image;
  final String title;
  final String description;
  final dynamic courseProgress;
  final Classroom classroom;

  Datum({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.courseProgress,
    required this.classroom,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        description: json["description"],
        courseProgress: json["course_progress"],
        classroom: Classroom.fromMap(json["classroom"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "image": image,
        "title": title,
        "description": description,
        "course_progress": courseProgress,
        "classroom": classroom.toMap(),
      };
}

class Classroom {
  final int id;
  final String name;

  Classroom({
    required this.id,
    required this.name,
  });

  factory Classroom.fromJson(String str) => Classroom.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Classroom.fromMap(Map<String, dynamic> json) => Classroom(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
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
  final int total;
  final int count;
  final int perPage;
  final int currentPage;
  final int totalPages;
  final Links links;

  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.totalPages,
    required this.links,
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
        links: Links.fromMap(json["links"]),
      );

  Map<String, dynamic> toMap() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "links": links.toMap(),
      };
}

class Links {
  final dynamic next;
  final dynamic previous;

  Links({
    required this.next,
    required this.previous,
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
