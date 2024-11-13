part of 'class_assignment_bloc.dart';

@freezed
class ClassAssignmentState with _$ClassAssignmentState {
  const factory ClassAssignmentState.initial() = _Initial;
  const factory ClassAssignmentState.loading() = _Loading;
  const factory ClassAssignmentState.getClassAssignmentSuccess(
          ClassAssignmentResponseModel classAssignmentResponseModel) =
      _getClassAssignmentSuccess;

  const factory ClassAssignmentState.error(String message) = _Error;
}
