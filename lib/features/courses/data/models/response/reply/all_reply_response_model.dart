import 'dart:convert';

class AllReplyResponseModel {
  final List<DatumReply>? data;
  final Meta? meta;
  final Pagination? pagination;

  AllReplyResponseModel({
    this.data,
    this.meta,
    this.pagination,
  });

  factory AllReplyResponseModel.fromJson(String str) =>
      AllReplyResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AllReplyResponseModel.fromMap(Map<String, dynamic> json) =>
      AllReplyResponseModel(
        data: json["data"] == null
            ? []
            : List<DatumReply>.from(
                json["data"]!.map((x) => DatumReply.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
        "pagination": pagination?.toMap(),
      };
}

class DatumReply {
  final int? id;
  final User? user;
  final String? commentReply;
  final String? createdAgo;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  DatumReply({
    this.id,
    this.user,
    this.commentReply,
    this.createdAgo,
    this.createdAt,
    this.updatedAt,
  });

  factory DatumReply.fromJson(String str) =>
      DatumReply.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DatumReply.fromMap(Map<String, dynamic> json) => DatumReply(
        id: json["id"],
        user: json["user"] == null ? null : User.fromMap(json["user"]),
        commentReply: json["comment_reply"],
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
        "user": user?.toMap(),
        "comment_reply": commentReply,
        "created_ago": createdAgo,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class User {
  final int? id;
  final String? name;
  final String? role;
  final String? image;

  User({
    this.id,
    this.name,
    this.role,
    this.image,
  });

  factory User.fromJson(String str) => User.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        role: json["role"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "role": role,
        "image": image,
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
