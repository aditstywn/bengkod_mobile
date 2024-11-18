import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/courses_remote_datasource.dart';
import '../../../data/models/response/lesson_response_model.dart';

part 'lesson_event.dart';
part 'lesson_state.dart';
part 'lesson_bloc.freezed.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  LessonBloc(this.coursesRemoteDatasource) : super(const _Initial()) {
    on<_GetLesson>((event, emit) async {
      emit(const _Loading());

      final response = await coursesRemoteDatasource.getLesson(event.idCourses);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetLessonSuccess(r)),
      );
    });
  }
}
