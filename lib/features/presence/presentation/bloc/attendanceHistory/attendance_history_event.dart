part of 'attendance_history_bloc.dart';

@freezed
class AttendanceHistoryEvent with _$AttendanceHistoryEvent {
  const factory AttendanceHistoryEvent.started() = _Started;
  const factory AttendanceHistoryEvent.getAttendaceHistory() =
      _GetAttendaceHistory;
}
