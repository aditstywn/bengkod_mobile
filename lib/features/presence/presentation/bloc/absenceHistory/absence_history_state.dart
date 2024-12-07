part of 'absence_history_bloc.dart';

@freezed
class AbsenceHistoryState with _$AbsenceHistoryState {
  const factory AbsenceHistoryState.initial() = _Initial;
  const factory AbsenceHistoryState.loading() = _Loading;
  const factory AbsenceHistoryState.getAbsenceHistorySuccess(
          AbsenceHistoryResponseModel absenceHistoryResponseModel) =
      _GetAbsenceHistorySuccess;
  const factory AbsenceHistoryState.error(String message) = _Error;
}
