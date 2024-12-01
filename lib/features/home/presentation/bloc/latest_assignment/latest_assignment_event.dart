part of 'latest_assignment_bloc.dart';

@freezed
class LatestAssignmentEvent with _$LatestAssignmentEvent {
  const factory LatestAssignmentEvent.started() = _Started;
  const factory LatestAssignmentEvent.getLatestAssignment() =
      _GetLatestAssignment;
}
