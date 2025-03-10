import 'dart:convert';

class AbsenceHistoryResponseModel {
  final List<AbsenceDatum>? data;
  final Meta? meta;

  AbsenceHistoryResponseModel({
    this.data,
    this.meta,
  });

  factory AbsenceHistoryResponseModel.fromJson(String str) =>
      AbsenceHistoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AbsenceHistoryResponseModel.fromMap(Map<String, dynamic> json) =>
      AbsenceHistoryResponseModel(
        data: json["data"] == null
            ? []
            : List<AbsenceDatum>.from(
                json["data"]!.map((x) => AbsenceDatum.fromMap(x))),
        meta: json["meta"] == null ? null : Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
        "meta": meta?.toMap(),
      };
}

class AbsenceDatum {
  final int? id;
  final String? absenceType;
  final String? notes;
  final String? attachment;
  final int? approveStatus;
  final String? approveStatusLabel;
  final DateTime? approveChangedAt;
  final String? approveChangedAtFormatted;
  final dynamic approveNote;
  final Presence? presence;

  AbsenceDatum({
    this.id,
    this.absenceType,
    this.notes,
    this.attachment,
    this.approveStatus,
    this.approveStatusLabel,
    this.approveChangedAt,
    this.approveChangedAtFormatted,
    this.approveNote,
    this.presence,
  });

  factory AbsenceDatum.fromJson(String str) =>
      AbsenceDatum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AbsenceDatum.fromMap(Map<String, dynamic> json) => AbsenceDatum(
        id: json["id"],
        absenceType: json["absence_type"],
        notes: json["notes"],
        attachment: json["attachment"],
        approveStatus: json["approve_status"],
        approveStatusLabel: json["approve_status_label"],
        approveChangedAt: json["approve_changed_at"] == null
            ? null
            : DateTime.parse(json["approve_changed_at"]),
        approveChangedAtFormatted: json["approve_changed_at_formatted"],
        approveNote: json["approve_note"],
        presence: json["presence"] == null
            ? null
            : Presence.fromMap(json["presence"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "absence_type": absenceType,
        "notes": notes,
        "attachment": attachment,
        "approve_status": approveStatus,
        "approve_status_label": approveStatusLabel,
        "approve_changed_at": approveChangedAt?.toIso8601String(),
        "approve_changed_at_formatted": approveChangedAtFormatted,
        "approve_note": approveNote,
        "presence": presence?.toMap(),
      };
}

class Presence {
  final int? id;
  final String? classroomName;
  final String? timeStart;
  final String? timeEnd;
  final String? day;
  final String? room;
  final int? week;
  final DateTime? presenceDate;
  final String? presenceDateFormatted;

  Presence({
    this.id,
    this.classroomName,
    this.timeStart,
    this.timeEnd,
    this.day,
    this.room,
    this.week,
    this.presenceDate,
    this.presenceDateFormatted,
  });

  factory Presence.fromJson(String str) => Presence.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Presence.fromMap(Map<String, dynamic> json) => Presence(
        id: json["id"],
        classroomName: json["classroom_name"],
        timeStart: json["time_start"],
        timeEnd: json["time_end"],
        day: json["day"],
        room: json["room"],
        week: json["week"],
        presenceDate: json["presence_date"] == null
            ? null
            : DateTime.parse(json["presence_date"]),
        presenceDateFormatted: json["presence_date_formatted"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "classroom_name": classroomName,
        "time_start": timeStart,
        "time_end": timeEnd,
        "day": day,
        "room": room,
        "week": week,
        "presence_date":
            "${presenceDate!.year.toString().padLeft(4, '0')}-${presenceDate!.month.toString().padLeft(2, '0')}-${presenceDate!.day.toString().padLeft(2, '0')}",
        "presence_date_formatted": presenceDateFormatted,
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
