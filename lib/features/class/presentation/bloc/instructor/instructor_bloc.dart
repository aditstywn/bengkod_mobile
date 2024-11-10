import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bengkod_mobile_app/features/class/data/datasource/class_remote_datasource.dart';

import '../../../data/models/response/instructor_class_response_model.dart';

part 'instructor_bloc.freezed.dart';
part 'instructor_event.dart';
part 'instructor_state.dart';

class InstructorBloc extends Bloc<InstructorEvent, InstructorState> {
  final ClassRemoteDatasource classRemoteDatasource;
  InstructorBloc(
    this.classRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetInstrutor>(
      (event, emit) async {
        emit(const _Loading());

        final response = await classRemoteDatasource.getInstructor(event.id);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_GetInstructorSuccess(r)),
        );
      },
    );
  }
}
