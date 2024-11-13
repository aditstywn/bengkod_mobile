import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/response/submit_asignment_response_model.dart';

part 'submit_event.dart';
part 'submit_state.dart';
part 'submit_bloc.freezed.dart';

class SubmitBloc extends Bloc<SubmitEvent, SubmitState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  SubmitBloc(this.assignmentRemoteDatasource) : super(const _Initial()) {
    on<_SubmitTask>(
      (event, emit) async {
        emit(const _Loading());

        final response = await assignmentRemoteDatasource.submitTask(
            event.idClass, event.idAssignmenrt);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_SubmitTaskSuccess(r)),
        );
      },
    );
  }
}
