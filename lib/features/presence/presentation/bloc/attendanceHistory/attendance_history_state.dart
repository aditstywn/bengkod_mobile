part of 'attendance_history_bloc.dart';

@freezed
class AttendanceHistoryState with _$AttendanceHistoryState {
  const factory AttendanceHistoryState.initial() = _Initial;
  const factory AttendanceHistoryState.loading() = _Loading;
  const factory AttendanceHistoryState.getAttendaceHistorySuccess(
          AttendanceHistoryResponseModel attendanceHistoryResponseModel) =
      _GetAttendaceHistorySuccess;
  const factory AttendanceHistoryState.error(String message) = _Error;
}
