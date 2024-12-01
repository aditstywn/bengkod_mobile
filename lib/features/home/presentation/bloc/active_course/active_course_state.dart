part of 'active_course_bloc.dart';

@freezed
class ActiveCourseState with _$ActiveCourseState {
  const factory ActiveCourseState.initial() = _Initial;
  const factory ActiveCourseState.loading() = _Loading;
  const factory ActiveCourseState.getActiveCourseSuccess(
          ActiveCourseResponseModel activeCourseResponseModel) =
      _GetActiveCourseSuccess;
  const factory ActiveCourseState.error(String message) = _Error;
}
