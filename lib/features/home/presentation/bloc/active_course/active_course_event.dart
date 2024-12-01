part of 'active_course_bloc.dart';

@freezed
class ActiveCourseEvent with _$ActiveCourseEvent {
  const factory ActiveCourseEvent.started() = _Started;
  const factory ActiveCourseEvent.getActiveCourse() = _GetActiveCourse;
}
