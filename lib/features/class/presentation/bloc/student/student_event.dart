part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.started() = _Started;
  const factory StudentEvent.getStudent(int id) = _GetStudent;
}
