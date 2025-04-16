import '../../../data/datasource/class_remote_datasource.dart';
import '../../../data/models/response/grades_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grades_event.dart';
part 'grades_state.dart';
part 'grades_bloc.freezed.dart';

class GradesBloc extends Bloc<GradesEvent, GradesState> {
  final ClassRemoteDatasource classRemoteDatasource;
  GradesBloc(this.classRemoteDatasource) : super(_Initial()) {
    on<_GetGrades>((event, emit) async {
      emit(const _Loading());

      final response = await classRemoteDatasource.grades(event.id);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetGradesSuccess(r)),
      );
    });
  }
}
