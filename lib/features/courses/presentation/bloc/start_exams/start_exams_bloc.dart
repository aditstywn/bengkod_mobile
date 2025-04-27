import 'package:bengkod_mobile_app/features/courses/data/datasource/courses_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/detail_exams_information_response_model.dart';
import '../../../data/models/response/start_exam_response_model.dart';

part 'start_exams_event.dart';
part 'start_exams_state.dart';
part 'start_exams_bloc.freezed.dart';

class StartExamsBloc extends Bloc<StartExamsEvent, StartExamsState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  StartExamsBloc(this.coursesRemoteDatasource) : super(_Initial()) {
    on<_StartExams>((event, emit) async {
      emit(const StartExamsState.loading());
      final result =
          await coursesRemoteDatasource.startExams(event.idCourse, event.page);
      result.fold(
        (l) => emit(StartExamsState.error(l)),
        (r) => emit(StartExamsState.startExamsSuccess(r)),
      );
    });
    on<_DetailInformationExams>((event, emit) async {
      emit(_Loading());
      final result =
          await coursesRemoteDatasource.detailIformationExams(event.idCourse);

      result.fold(
        (failure) => emit(_Error(failure)),
        (data) => emit(_DetailInformationExamsSuccess(data)),
      );
    });
  }
}
