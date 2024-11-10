part of 'instructor_bloc.dart';

@freezed
class InstructorEvent with _$InstructorEvent {
  const factory InstructorEvent.started() = _Started;
  const factory InstructorEvent.getInstrutor(int id) = _GetInstrutor;
}
