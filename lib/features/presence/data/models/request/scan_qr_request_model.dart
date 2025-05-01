import 'dart:convert';

class ScanQrRequestModel {
  final String? code;
  final double? longitude;
  final double? latitude;

  ScanQrRequestModel({
    this.code,
    this.longitude,
    this.latitude,
  });

  factory ScanQrRequestModel.fromJson(String str) =>
      ScanQrRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ScanQrRequestModel.fromMap(Map<String, dynamic> json) =>
      ScanQrRequestModel(
        code: json["code"],
        longitude: json["longitude"]?.toDouble(),
        latitude: json["latitude"]?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "code": code,
        "longitude": longitude,
        "latitude": latitude,
      };
}
