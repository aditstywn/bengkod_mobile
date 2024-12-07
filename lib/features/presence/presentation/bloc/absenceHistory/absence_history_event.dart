part of 'absence_history_bloc.dart';

@freezed
class AbsenceHistoryEvent with _$AbsenceHistoryEvent {
  const factory AbsenceHistoryEvent.started() = _Started;
  const factory AbsenceHistoryEvent.getAbsenceHistory() = _GetAbsenceHistory;
}
