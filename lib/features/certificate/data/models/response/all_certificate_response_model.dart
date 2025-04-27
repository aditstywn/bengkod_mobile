import 'dart:convert';

class AllCertificateResponseModel {
  final List<DatumCertificate>? data;
  final Meta? meta;
  final Pagination? pagination;

  AllCertificateResponseModel({
    this.data,
    this.meta,
    this.pagination,
  });

  factory AllCertificateResponseModel.fromJson(String str) =>
      AllCertificateResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AllCertificateResponseModel.fromMap(Map<String, dynamic> json) =>
      AllCertificateResponseModel(
        data: json["data"] == null
            ? []
            : List<DatumCertificate>.from(
                json["data"]!.map((x) => DatumCertificate.fromMap(x))),
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

class DatumCertificate {
  final int? id;
  final Course? course;
  final Student? student;
  final String? certificateUrl;
  final DateTime? expiresAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  DatumCertificate({
    this.id,
    this.course,
    this.student,
    this.certificateUrl,
    this.expiresAt,
    this.createdAt,
    this.updatedAt,
  });

  factory DatumCertificate.fromJson(String str) =>
      DatumCertificate.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DatumCertificate.fromMap(Map<String, dynamic> json) =>
      DatumCertificate(
        id: json["id"],
        course: json["course"] == null ? null : Course.fromMap(json["course"]),
        student:
            json["student"] == null ? null : Student.fromMap(json["student"]),
        certificateUrl: json["certificate_url"],
        expiresAt: json["expires_at"] == null
            ? null
            : DateTime.parse(json["expires_at"]),
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "course": course?.toMap(),
        "student": student?.toMap(),
        "certificate_url": certificateUrl,
        "expires_at": expiresAt?.toIso8601String(),
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
      };
}

class Course {
  final int? id;
  final Student? lecture;
  final String? image;
  final String? backgroundImage;
  final String? title;
  final dynamic anchor;
  final String? urlTrailer;
  final String? briefDescription;
  final String? description;
  final String? tools;
  final String? teachingMethod;
  final String? level;
  final String? category;
  final Path? path;

  Course({
    this.id,
    this.lecture,
    this.image,
    this.backgroundImage,
    this.title,
    this.anchor,
    this.urlTrailer,
    this.briefDescription,
    this.description,
    this.tools,
    this.teachingMethod,
    this.level,
    this.category,
    this.path,
  });

  factory Course.fromJson(String str) => Course.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Course.fromMap(Map<String, dynamic> json) => Course(
        id: json["id"],
        lecture:
            json["lecture"] == null ? null : Student.fromMap(json["lecture"]),
        image: json["image"],
        backgroundImage: json["background_image"],
        title: json["title"],
        anchor: json["anchor"],
        urlTrailer: json["url_trailer"],
        briefDescription: json["brief_description"],
        description: json["description"],
        tools: json["tools"],
        teachingMethod: json["teaching_method"],
        level: json["level"],
        category: json["category"],
        path: json["path"] == null ? null : Path.fromMap(json["path"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "lecture": lecture?.toMap(),
        "image": image,
        "background_image": backgroundImage,
        "title": title,
        "anchor": anchor,
        "url_trailer": urlTrailer,
        "brief_description": briefDescription,
        "description": description,
        "tools": tools,
        "teaching_method": teachingMethod,
        "level": level,
        "category": category,
        "path": path?.toMap(),
      };
}

class Student {
  final int? id;
  final String? identityCode;
  final String? name;

  Student({
    this.id,
    this.identityCode,
    this.name,
  });

  factory Student.fromJson(String str) => Student.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Student.fromMap(Map<String, dynamic> json) => Student(
        id: json["id"],
        identityCode: json["identity_code"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "identity_code": identityCode,
        "name": name,
      };
}

class Path {
  final int? id;
  final String? name;

  Path({
    this.id,
    this.name,
  });

  factory Path.fromJson(String str) => Path.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Path.fromMap(Map<String, dynamic> json) => Path(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
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
