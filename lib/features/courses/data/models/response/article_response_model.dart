import 'dart:convert';

class ArticleResponseModel {
  final Data data;
  final Meta meta;

  ArticleResponseModel({
    required this.data,
    required this.meta,
  });

  factory ArticleResponseModel.fromJson(String str) =>
      ArticleResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ArticleResponseModel.fromMap(Map<String, dynamic> json) =>
      ArticleResponseModel(
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
  final int sectionId;
  final String title;
  final String content;
  final int sortOrder;
  final Next? next;
  final Next? prev;

  Data({
    required this.id,
    required this.sectionId,
    required this.title,
    required this.content,
    required this.sortOrder,
    this.next,
    this.prev,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        sectionId: json["section_id"],
        title: json["title"],
        content: json["content"],
        sortOrder: json["sort_order"],
        next: json["next"] != null ? Next.fromMap(json["next"]) : null,
        prev: json["prev"] != null ? Next.fromMap(json["prev"]) : null,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "section_id": sectionId,
        "title": title,
        "content": content,
        "sort_order": sortOrder,
        "next": next?.toMap(),
        "prev": prev?.toMap(),
      };
}

class Next {
  final int id;
  final String name;

  Next({
    required this.id,
    required this.name,
  });

  factory Next.fromJson(String str) => Next.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Next.fromMap(Map<String, dynamic> json) => Next(
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

  Meta({
    required this.statusCode,
    required this.success,
    required this.message,
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
