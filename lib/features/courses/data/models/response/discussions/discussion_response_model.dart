import 'dart:convert';

class DiscussionsResponseModel {
  final List<DataDiscussions>? data;
  final Meta? meta;

  DiscussionsResponseModel({
    this.data,
    this.meta,
  });

  factory DiscussionsResponseModel.fromJson(String str) =>
      DiscussionsResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DiscussionsResponseModel.fromMap(Map<String, dynamic> json) =>
      DiscussionsResponseModel(
        data: json["data"] == null
            ? []
            : List<DataDiscussions>.from(
                json["data"]!.map((x) => DataDiscussions.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
      };
}

class DataDiscussions {
  final int? id;
  final int? courseId;
  final int? articleId;
  final Student? student;
  final Pinned? pinned;
  final String? title;
  final String? comment;
  final int? numberOfReplies;
  final List<String>? images;
  final String? createdAgo;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  DataDiscussions({
    this.id,
    this.courseId,
    this.articleId,
    this.student,
    this.pinned,
    this.title,
    this.comment,
    this.numberOfReplies,
    this.images,
    this.createdAgo,
    this.createdAt,
    this.updatedAt,
  });

  factory DataDiscussions.fromJson(String str) =>
      DataDiscussions.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataDiscussions.fromMap(Map<String, dynamic> json) => DataDiscussions(
        id: json["id"],
        courseId: json["course_id"],
        articleId: json["article_id"],
        student:
            json["student"] == null ? null : Student.fromMap(json["student"]),
        pinned: json["pinned"] == null ? null : Pinned.fromMap(json["pinned"]),
        title: json["title"],
        comment: json["comment"],
        numberOfReplies: json["number_of_replies"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        createdAgo: json["created_ago"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "course_id": courseId,
        "article_id": articleId,
        "student": student?.toMap(),
        "pinned": pinned?.toMap(),
        "title": title,
        "comment": comment,
        "number_of_replies": numberOfReplies,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "created_ago": createdAgo,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Pinned {
  final String? user;

  Pinned({
    this.user,
  });

  factory Pinned.fromJson(String str) => Pinned.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Pinned.fromMap(Map<String, dynamic> json) => Pinned(
        user: json["user"],
      );

  Map<String, dynamic> toMap() => {
        "user": user,
      };
}

class Student {
  final int? id;
  final String? name;
  final String? role;
  final String? image;

  Student({
    this.name,
    this.id,
    this.role,
    this.image,
  });

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        name: json["name"],
        id: json["id"],
        role: json["role"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "id": id,
        "role": role,
        "image": image,
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
