import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasorce/home_remote_datasource.dart';
import '../../../data/models/response/active_course_response_model.dart';

part 'active_course_bloc.freezed.dart';
part 'active_course_event.dart';
part 'active_course_state.dart';

class ActiveCourseBloc extends Bloc<ActiveCourseEvent, ActiveCourseState> {
  final HomeRemoteDatasource homeRemoteDatasource;
  ActiveCourseBloc(this.homeRemoteDatasource) : super(const _Initial()) {
    on<_GetActiveCourse>((event, emit) async {
      emit(const _Loading());

      final response = await homeRemoteDatasource.getActiveCourse();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetActiveCourseSuccess(r)),
      );
    });
  }
}
