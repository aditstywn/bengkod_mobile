import 'package:bengkod_mobile_app/features/courses/data/datasource/courses_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/courses_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'courses_event.dart';
part 'courses_state.dart';
part 'courses_bloc.freezed.dart';

class CoursesBloc extends Bloc<CoursesEvent, CoursesState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  CoursesBloc(this.coursesRemoteDatasource) : super(const _Initial()) {
    on<_GetCourses>((event, emit) async {
      emit(const _Loading());

      final response = await coursesRemoteDatasource.getCourses(event.idClass);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetCoursesSuccess(r)),
      );
    });
  }
}
