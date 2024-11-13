part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;
  const factory TaskState.loading() = _Loading;
  const factory TaskState.uploadTaskSuccess(
      UploadTaskResponseModel ploadTaskResponseModel) = _UploadTaskSuccess;
  const factory TaskState.submitTaskSuccess(
          SubmitAssignmentResponseModel submitAssignmentResponseModel) =
      _SubmitTaskSuccess;
  const factory TaskState.error(String message) = _Error;
}
