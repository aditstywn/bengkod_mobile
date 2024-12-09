part of 'class_and_assignment_bloc.dart';

@freezed
class ClassAndAssignmentEvent with _$ClassAndAssignmentEvent {
  const factory ClassAndAssignmentEvent.started() = _Started;
  const factory ClassAndAssignmentEvent.getClassAndAssignment() =
      _GetClassAndAssignment;
}
