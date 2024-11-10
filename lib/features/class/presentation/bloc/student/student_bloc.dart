import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/class_remote_datasource.dart';
import '../../../data/models/response/student_class_response_model.dart';

part 'student_event.dart';
part 'student_state.dart';
part 'student_bloc.freezed.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final ClassRemoteDatasource classRemoteDatasource;
  StudentBloc(this.classRemoteDatasource) : super(const _Initial()) {
    on<_GetStudent>((event, emit) async {
      emit(const _Loading());

      final response = await classRemoteDatasource.getStudent(event.id);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetStudentSuccess(r)),
      );
    });
  }
}
