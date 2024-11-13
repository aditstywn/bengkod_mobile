import 'dart:convert';

class ClassAssignmentResponseModel {
  final List<Datum> data;
  final Meta meta;

  ClassAssignmentResponseModel({
    required this.data,
    required this.meta,
  });

  factory ClassAssignmentResponseModel.fromJson(String str) =>
      ClassAssignmentResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ClassAssignmentResponseModel.fromMap(Map<String, dynamic> json) =>
      ClassAssignmentResponseModel(
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
  final String name;

  Datum({
    required this.id,
    required this.name,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
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
