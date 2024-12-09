import 'dart:convert';

class ScanQrResponseModel {
  final Data data;
  final Meta meta;

  ScanQrResponseModel({
    required this.data,
    required this.meta,
  });

  factory ScanQrResponseModel.fromJson(String str) =>
      ScanQrResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ScanQrResponseModel.fromMap(Map<String, dynamic> json) =>
      ScanQrResponseModel(
        data: Data.fromMap(json["data"]),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": data.toMap(),
        "meta": meta.toMap(),
      };
}

class Data {
  final int presenceId;

  Data({
    required this.presenceId,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        presenceId: json["presence_id"],
      );

  Map<String, dynamic> toMap() => {
        "presence_id": presenceId,
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
