part of 'latest_assignment_bloc.dart';

@freezed
class LatestAssignmentState with _$LatestAssignmentState {
  const factory LatestAssignmentState.initial() = _Initial;
  const factory LatestAssignmentState.loading() = _Loading;
  const factory LatestAssignmentState.getLatestAssignmentSuccess(
          LatestAssignmentResponseModel latestAssignmentResponseModel) =
      _GetLatestAssignmentSuccess;
  const factory LatestAssignmentState.error(String message) = _Error;
}
