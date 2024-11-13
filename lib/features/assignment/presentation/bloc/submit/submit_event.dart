part of 'submit_bloc.dart';

@freezed
class SubmitEvent with _$SubmitEvent {
  const factory SubmitEvent.started() = _Started;
  const factory SubmitEvent.submitTask(int idClass, int idAssignmenrt) =
      _SubmitTask;
}
