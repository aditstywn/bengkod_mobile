part of 'submit_bloc.dart';

@freezed
class SubmitState with _$SubmitState {
  const factory SubmitState.initial() = _Initial;
  const factory SubmitState.loading() = _Loading;
  const factory SubmitState.submitTaskSuccess(
          SubmitAssignmentResponseModel submitAssignmentResponseModel) =
      _SubmitTaskSuccess;
  const factory SubmitState.error(String message) = _Error;
}
