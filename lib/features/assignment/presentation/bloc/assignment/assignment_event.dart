part of 'assignment_bloc.dart';

@freezed
class AssignmentEvent with _$AssignmentEvent {
  const factory AssignmentEvent.started() = _Started;
  const factory AssignmentEvent.getAssignment(int id) = _GetAssignment;
}
