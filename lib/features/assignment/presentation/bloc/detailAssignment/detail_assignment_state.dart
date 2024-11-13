part of 'detail_assignment_bloc.dart';

@freezed
class DetailAssignmentState with _$DetailAssignmentState {
  const factory DetailAssignmentState.initial() = _Initial;
  const factory DetailAssignmentState.loading() = _Loading;

  const factory DetailAssignmentState.getDetailAssignmentSuccess(
          DetailAssignmentResponseModel detailAssignmentResponseModel) =
      _getDetailAssignmentSuccess;
  const factory DetailAssignmentState.error(String message) = _Error;
}
