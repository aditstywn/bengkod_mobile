import 'package:bengkod_mobile_app/features/courses/data/datasource/courses_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/request/answer_request_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/answer_response_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/finis_answer_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_event.dart';
part 'answer_state.dart';
part 'answer_bloc.freezed.dart';

class AnswerBloc extends Bloc<AnswerEvent, AnswerState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  AnswerBloc(this.coursesRemoteDatasource) : super(_Initial()) {
    on<_Answer>((event, emit) async {
      emit(_Loading());
      final result = await coursesRemoteDatasource.answer(
        event.answer,
        event.idCourse,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_AnswerSuccess(r)),
      );
    });
    on<_Finish>((event, emit) async {
      emit(_Loading());
      final result = await coursesRemoteDatasource.finish(event.idCourse);
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_FinishAnswer(r)),
      );
    });
  }
}
