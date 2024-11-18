part of 'lesson_bloc.dart';

@freezed
class LessonState with _$LessonState {
  const factory LessonState.initial() = _Initial;
  const factory LessonState.loading() = _Loading;

  const factory LessonState.getLessonSuccess(
      LessonResponseModel lessonResponseModel) = _GetLessonSuccess;
  const factory LessonState.error(String message) = _Error;
}
