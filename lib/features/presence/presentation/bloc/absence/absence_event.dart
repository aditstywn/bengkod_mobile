part of 'absence_bloc.dart';

@freezed
class AbsenceEvent with _$AbsenceEvent {
  const factory AbsenceEvent.started() = _Started;
  const factory AbsenceEvent.absence(IzinRequestModel izin) = _Absence;
}
