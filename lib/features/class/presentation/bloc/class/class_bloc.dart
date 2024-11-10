import '../../../data/models/response/instructor_class_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/class_remote_datasource.dart';
import '../../../data/models/response/class_response_model.dart';

part 'class_bloc.freezed.dart';
part 'class_event.dart';
part 'class_state.dart';

class ClassBloc extends Bloc<ClassEvent, ClassState> {
  final ClassRemoteDatasource classRemoteDatasource;
  ClassBloc(
    this.classRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetClass>(
      (event, emit) async {
        emit(const _Loading());

        final response = await classRemoteDatasource.getClass();

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_GetClassSuccess(r)),
        );
      },
    );
  }
}
