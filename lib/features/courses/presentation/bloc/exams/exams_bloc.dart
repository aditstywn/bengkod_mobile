import '../../../data/datasource/courses_remote_datasource.dart';
import '../../../data/models/response/create_exam_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/start_exam_response_model.dart';

part 'exams_event.dart';
part 'exams_state.dart';
part 'exams_bloc.freezed.dart';

class ExamsBloc extends Bloc<ExamsEvent, ExamsState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  ExamsBloc(this.coursesRemoteDatasource) : super(_Initial()) {
    on<_CreateExams>((event, emit) async {
      emit(const ExamsState.loading());
      final result = await coursesRemoteDatasource.createExams(event.idCourse);

      result.fold(
        (l) => emit(ExamsState.error(l)),
        (create) => emit(ExamsState.createExamsSuccess(create)),
      );
    });
  }
}
