part of 'class_assignment_bloc.dart';

@freezed
class ClassAssignmentEvent with _$ClassAssignmentEvent {
  const factory ClassAssignmentEvent.started() = _Started;
  const factory ClassAssignmentEvent.getClassAssignment() = _GetClassAssignment;
}
