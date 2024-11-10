import 'dart:convert';

class StudentClassResponseModel {
  final List<Datum> data;
  final Meta meta;

  StudentClassResponseModel({
    required this.data,
    required this.meta,
  });

  factory StudentClassResponseModel.fromJson(String str) =>
      StudentClassResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory StudentClassResponseModel.fromMap(Map<String, dynamic> json) =>
      StudentClassResponseModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class Datum {
  final String identityCode;
  final String name;
  final String image;

  Datum({
    required this.identityCode,
    required this.name,
    required this.image,
  });

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        identityCode: json["identity_code"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "identity_code": identityCode,
        "name": name,
        "image": image,
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
