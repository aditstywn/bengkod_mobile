part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;
  const factory TaskEvent.uploadTask(
      UploadTaskRequestModel uploadTaskRequestModel,
      int idClass,
      int idAssignmenrt) = _UploadTask;
}
