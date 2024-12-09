part of 'class_and_assignment_bloc.dart';

@freezed
class ClassAndAssignmentState with _$ClassAndAssignmentState {
  const factory ClassAndAssignmentState.initial() = _Initial;
  const factory ClassAndAssignmentState.loading() = _Loading;
  const factory ClassAndAssignmentState.getClassAndAssignmentSuccess(
      List<Assignment> assignment) = _GetClassAndAssignmentSuccess;
  const factory ClassAndAssignmentState.error(String message) = _Error;
}
