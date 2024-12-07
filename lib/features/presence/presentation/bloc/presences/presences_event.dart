part of 'presences_bloc.dart';

@freezed
class PresencesEvent with _$PresencesEvent {
  const factory PresencesEvent.started() = _Started;
  const factory PresencesEvent.getPresences(int idClass) = _GetPresences;
}
