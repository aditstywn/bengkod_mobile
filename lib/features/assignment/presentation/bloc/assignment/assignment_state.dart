part of 'assignment_bloc.dart';

@freezed
class AssignmentState with _$AssignmentState {
  const factory AssignmentState.initial() = _Initial;
  const factory AssignmentState.loading() = _Loading;
  const factory AssignmentState.getAssignmentSuccess(
      AssignmentResponseModel assignmentResponseModel) = _getAssignmentSuccess;
  const factory AssignmentState.getDetailAssignmentSuccess(
          DetailAssignmentResponseModel detailAssignmentResponseModel) =
      _getDetailAssignmentSuccess;
  const factory AssignmentState.error(String message) = _Error;
}
