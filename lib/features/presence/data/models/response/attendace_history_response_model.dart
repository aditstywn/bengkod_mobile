import 'dart:convert';

class AttendanceHistoryResponseModel {
  final List<AttendanceDatum> data;
  final Meta meta;

  AttendanceHistoryResponseModel({
    required this.data,
    required this.meta,
  });

  factory AttendanceHistoryResponseModel.fromJson(String str) =>
      AttendanceHistoryResponseModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AttendanceHistoryResponseModel.fromMap(Map<String, dynamic> json) =>
      AttendanceHistoryResponseModel(
        data: List<AttendanceDatum>.from(
            json["data"].map((x) => AttendanceDatum.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toMap() => {
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
        "meta": meta.toMap(),
      };
}

class AttendanceDatum {
  final int id;
  final DateTime clockInDate;
  final String clockInDateFormatted;
  final String clockInTime;
  final Presence presence;

  AttendanceDatum({
    required this.id,
    required this.clockInDate,
    required this.clockInDateFormatted,
    required this.clockInTime,
    required this.presence,
  });

  factory AttendanceDatum.fromJson(String str) =>
      AttendanceDatum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AttendanceDatum.fromMap(Map<String, dynamic> json) => AttendanceDatum(
        id: json["id"],
        clockInDate: DateTime.parse(json["clock_in_date"]),
        clockInDateFormatted: json["clock_in_date_formatted"],
        clockInTime: json["clock_in_time"],
        presence: Presence.fromMap(json["presence"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "clock_in_date":
            "${clockInDate.year.toString().padLeft(4, '0')}-${clockInDate.month.toString().padLeft(2, '0')}-${clockInDate.day.toString().padLeft(2, '0')}",
        "clock_in_date_formatted": clockInDateFormatted,
        "clock_in_time": clockInTime,
        "presence": presence.toMap(),
      };
}

class Presence {
  final int id;
  final String classroomName;
  final String timeStart;
  final String timeEnd;
  final String day;
  final String room;
  final int week;
  final DateTime presenceDate;
  final String presenceDateFormatted;

  Presence({
    required this.id,
    required this.classroomName,
    required this.timeStart,
    required this.timeEnd,
    required this.day,
    required this.room,
    required this.week,
    required this.presenceDate,
    required this.presenceDateFormatted,
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
        presenceDate: DateTime.parse(json["presence_date"]),
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
            "${presenceDate.year.toString().padLeft(4, '0')}-${presenceDate.month.toString().padLeft(2, '0')}-${presenceDate.day.toString().padLeft(2, '0')}",
        "presence_date_formatted": presenceDateFormatted,
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
