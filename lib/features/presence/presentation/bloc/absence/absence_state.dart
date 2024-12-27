part of 'absence_bloc.dart';

@freezed
class AbsenceState with _$AbsenceState {
  const factory AbsenceState.initial() = _Initial;
  const factory AbsenceState.loading() = _Loading;
  const factory AbsenceState.absenceSuccess(
      AbsenceResponseModel absenceResponseModel) = _AbsenceSuccess;
  const factory AbsenceState.error(String message) = _Error;
}
