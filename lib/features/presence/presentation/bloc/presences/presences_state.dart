part of 'presences_bloc.dart';

@freezed
class PresencesState with _$PresencesState {
  const factory PresencesState.initial() = _Initial;
  const factory PresencesState.loading() = _Loading;
  const factory PresencesState.getPresencesSuccess(
    PresencesResponseModel presences,
    AttendanceHistoryResponseModel attendances,
    AbsenceHistoryResponseModel absences,
  ) = _GetPresencesSuccess;
  const factory PresencesState.error(String message) = _Error;
}
