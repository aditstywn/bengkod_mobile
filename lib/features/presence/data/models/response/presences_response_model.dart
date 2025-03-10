import 'dart:convert';

class PresencesResponseModel {
  final Statistic? statistic;
  final Presences? presences;

  PresencesResponseModel({
    this.statistic,
    this.presences,
  });

  factory PresencesResponseModel.fromJson(String str) =>
      PresencesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PresencesResponseModel.fromMap(Map<String, dynamic> json) =>
      PresencesResponseModel(
        statistic: json["statistic"] == null
            ? null
            : Statistic.fromMap(json["statistic"]),
        presences: json["presences"] == null
            ? null
            : Presences.fromMap(json["presences"]),
      );

  Map<String, dynamic> toMap() => {
        "statistic": statistic?.toMap(),
        "presences": presences?.toMap(),
      };
}

class Presences {
  final List<PresencesDatum>? data;
  final Meta? meta;

  Presences({
    this.data,
    this.meta,
  });

  factory Presences.fromJson(String str) => Presences.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Presences.fromMap(Map<String, dynamic> json) => Presences(
        data: json["data"] == null
            ? []
            : List<PresencesDatum>.from(
                json["data"]!.map((x) => PresencesDatum.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
      };
}

class PresencesDatum {
  final int? id;
  final int? week;
  final DateTime? presenceDate;
  final String? presenceDateFormatted;
  final int? isEnabled;
  final String? isEnabledLabel;
  final int? qrIsGenerated;

  PresencesDatum({
    this.id,
    this.week,
    this.presenceDate,
    this.presenceDateFormatted,
    this.isEnabled,
    this.isEnabledLabel,
    this.qrIsGenerated,
  });

  factory PresencesDatum.fromJson(String str) =>
      PresencesDatum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PresencesDatum.fromMap(Map<String, dynamic> json) => PresencesDatum(
        id: json["id"],
        week: json["week"],
        presenceDate: json["presence_date"] == null
            ? null
            : DateTime.parse(json["presence_date"]),
        presenceDateFormatted: json["presence_date_formatted"],
        isEnabled: json["is_enabled"],
        isEnabledLabel: json["is_enabled_label"],
        qrIsGenerated: json["qr_is_generated"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "week": week,
        "presence_date":
            "${presenceDate!.year.toString().padLeft(4, '0')}-${presenceDate!.month.toString().padLeft(2, '0')}-${presenceDate!.day.toString().padLeft(2, '0')}",
        "presence_date_formatted": presenceDateFormatted,
        "is_enabled": isEnabled,
        "is_enabled_label": isEnabledLabel,
        "qr_is_generated": qrIsGenerated,
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

class Statistic {
  final int? totalPresence;
  final int? attended;
  final int? attendedPercentage;
  final int? absent;
  final int? absentPercentage;
  final int? unattended;
  final int? unattendedPercentage;

  Statistic({
    this.totalPresence,
    this.attended,
    this.attendedPercentage,
    this.absent,
    this.absentPercentage,
    this.unattended,
    this.unattendedPercentage,
  });

  factory Statistic.fromJson(String str) => Statistic.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Statistic.fromMap(Map<String, dynamic> json) => Statistic(
        totalPresence: json["totalPresence"],
        attended: json["attended"],
        attendedPercentage: json["attended_percentage"],
        absent: json["absent"],
        absentPercentage: json["absent_percentage"],
        unattended: json["unattended"],
        unattendedPercentage: json["unattended_percentage"],
      );

  Map<String, dynamic> toMap() => {
        "totalPresence": totalPresence,
        "attended": attended,
        "attended_percentage": attendedPercentage,
        "absent": absent,
        "absent_percentage": absentPercentage,
        "unattended": unattended,
        "unattended_percentage": unattendedPercentage,
      };
}
