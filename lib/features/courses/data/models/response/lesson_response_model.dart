import 'dart:convert';

class LessonResponseModel {
  final List<Datum> data;
  final Meta meta;

  LessonResponseModel({
    required this.data,
    required this.meta,
  });

  factory LessonResponseModel.fromJson(String str) =>
      LessonResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory LessonResponseModel.fromMap(Map<String, dynamic> json) =>
      LessonResponseModel(
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
  final String title;
  final List<Section> sections;

  Datum({
    required this.id,
    required this.title,
    required this.sections,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        sections:
            List<Section>.from(json["sections"].map((x) => Section.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "sections": List<dynamic>.from(sections.map((x) => x.toMap())),
      };
}

class Section {
  final int id;
  final String name;
  final int sortOrder;
  final List<Article> articles;

  Section({
    required this.id,
    required this.name,
    required this.sortOrder,
    required this.articles,
  });

  factory Section.fromJson(String str) => Section.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Section.fromMap(Map<String, dynamic> json) => Section(
        id: json["id"],
        name: json["name"],
        sortOrder: json["sort_order"],
        articles:
            List<Article>.from(json["articles"].map((x) => Article.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "sort_order": sortOrder,
        "articles": List<dynamic>.from(articles.map((x) => x.toMap())),
      };
}

class Article {
  final int id;
  final String title;
  final int sortOrder;
  final bool completed;

  Article({
    required this.id,
    required this.title,
    required this.sortOrder,
    required this.completed,
  });

  factory Article.fromJson(String str) => Article.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Article.fromMap(Map<String, dynamic> json) => Article(
        id: json["id"],
        title: json["title"],
        sortOrder: json["sort_order"],
        completed: json["completed"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "sort_order": sortOrder,
        "completed": completed,
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
