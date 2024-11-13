part of 'detail_assignment_bloc.dart';

@freezed
class DetailAssignmentEvent with _$DetailAssignmentEvent {
  const factory DetailAssignmentEvent.started() = _Started;
  const factory DetailAssignmentEvent.getDetailAssignment(
      int idClass, int idAssignment) = _GetDetailAssignment;
}
