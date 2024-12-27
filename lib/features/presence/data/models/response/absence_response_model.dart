import 'dart:convert';

class AbsenceResponseModel {
  final Data data;
  final Meta meta;

  AbsenceResponseModel({
    required this.data,
    required this.meta,
  });

  factory AbsenceResponseModel.fromJson(String str) =>
      AbsenceResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AbsenceResponseModel.fromMap(Map<String, dynamic> json) =>
      AbsenceResponseModel(
        data: Data.fromMap(json["data"]),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "meta": meta.toMap(),
      };
}

class Data {
  final int absenceId;

  Data({
    required this.absenceId,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        absenceId: json["absence_id"],
      );

  Map<String, dynamic> toMap() => {
        "absence_id": absenceId,
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
