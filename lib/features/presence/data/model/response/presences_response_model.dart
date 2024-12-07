// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PresencesResponseModel {
  final Statistic statistic;
  final Presences presences;

  PresencesResponseModel({
    required this.statistic,
    required this.presences,
  });

  factory PresencesResponseModel.fromJson(String str) =>
      PresencesResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory PresencesResponseModel.fromMap(Map<String, dynamic> json) =>
      PresencesResponseModel(
        statistic: Statistic.fromMap(json["statistic"]),
        presences: Presences.fromMap(json["presences"]),
      );

  Map<String, dynamic> toMap() => {
        "statistic": statistic.toMap(),
        "presences": presences.toMap(),
      };
}

class Presences {
  final List<DataPresences> data;
  final Meta meta;

  Presences({
    required this.data,
    required this.meta,
  });

  factory Presences.fromJson(String str) => Presences.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Presences.fromMap(Map<String, dynamic> json) => Presences(
        data: List<DataPresences>.from(
            json["data"].map((x) => DataPresences.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class DataPresences {
  final int id;
  final int week;
  final DateTime presenceDate;
  final String presenceDateFormatted;
  final int isEnabled;
  final String isEnabledLabel;
  final int qrIsGenerated;
  final String? statusPresences;

  DataPresences({
    required this.id,
    required this.week,
    required this.presenceDate,
    required this.presenceDateFormatted,
    required this.isEnabled,
    required this.isEnabledLabel,
    required this.qrIsGenerated,
    this.statusPresences,
  });

  factory DataPresences.fromJson(String str) =>
      DataPresences.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DataPresences.fromMap(Map<String, dynamic> json) => DataPresences(
        id: json["id"],
        week: json["week"],
        presenceDate: DateTime.parse(json["presence_date"]),
        presenceDateFormatted: json["presence_date_formatted"],
        isEnabled: json["is_enabled"],
        isEnabledLabel: json["is_enabled_label"],
        qrIsGenerated: json["qr_is_generated"],
        statusPresences: null,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "week": week,
        "presence_date":
            "${presenceDate.year.toString().padLeft(4, '0')}-${presenceDate.month.toString().padLeft(2, '0')}-${presenceDate.day.toString().padLeft(2, '0')}",
        "presence_date_formatted": presenceDateFormatted,
        "is_enabled": isEnabled,
        "is_enabled_label": isEnabledLabel,
        "qr_is_generated": qrIsGenerated,
        "status_presences": statusPresences,
      };

  DataPresences copyWith({
    String? statusPresences,
  }) {
    return DataPresences(
      id: id,
      week: week,
      presenceDate: presenceDate,
      presenceDateFormatted: presenceDateFormatted,
      isEnabled: isEnabled,
      isEnabledLabel: isEnabledLabel,
      qrIsGenerated: qrIsGenerated,
      statusPresences: statusPresences ?? this.statusPresences,
    );
  }
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

class Statistic {
  final int totalPresence;
  final int attended;
  final int attendedPercentage;
  final int absent;
  final int absentPercentage;
  final int unattended;
  final int unattendedPercentage;

  Statistic({
    required this.totalPresence,
    required this.attended,
    required this.attendedPercentage,
    required this.absent,
    required this.absentPercentage,
    required this.unattended,
    required this.unattendedPercentage,
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
