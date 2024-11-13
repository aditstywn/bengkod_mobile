import 'package:bengkod_mobile_app/features/assignment/data/models/response/submit_asignment_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/request/upload_task_request_model.dart';
import '../../../data/models/response/upload_task_response_model.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  TaskBloc(this.assignmentRemoteDatasource) : super(const _Initial()) {
    on<_UploadTask>(
      (event, emit) async {
        emit(const _Loading());

        final response = await assignmentRemoteDatasource.uploadTask(
            event.idClass, event.idAssignmenrt, event.uploadTaskRequestModel);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_UploadTaskSuccess(r)),
        );
      },
    );
  }
}
