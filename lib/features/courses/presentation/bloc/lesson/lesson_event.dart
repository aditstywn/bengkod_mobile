part of 'lesson_bloc.dart';

@freezed
class LessonEvent with _$LessonEvent {
  const factory LessonEvent.started() = _Started;
  const factory LessonEvent.getLesson(int idCourses) = _GetLesson;
}
