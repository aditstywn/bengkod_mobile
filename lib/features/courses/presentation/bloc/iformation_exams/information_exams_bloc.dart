import '../../../data/models/response/Iformation_exams_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/courses_remote_datasource.dart';

part 'information_exams_event.dart';
part 'information_exams_state.dart';
part 'information_exams_bloc.freezed.dart';

class InformationExamsBloc
    extends Bloc<InformationExamsEvent, InformationExamsState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  InformationExamsBloc(this.coursesRemoteDatasource) : super(_Initial()) {
    on<_InformationExams>((event, emit) async {
      emit(_Loading());
      final result = await coursesRemoteDatasource.iformationExams(
          event.idCourse, event.page);

      result.fold(
        (failure) => emit(_Error(failure)),
        (data) => emit(_InformationExamsSuccess(data)),
      );
    });
  }
}
