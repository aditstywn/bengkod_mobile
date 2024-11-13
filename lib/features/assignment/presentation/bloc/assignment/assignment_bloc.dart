import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/response/assignment_response_model.dart';
import '../../../data/models/response/detail_aasigment_response_model.dart';

part 'assignment_bloc.freezed.dart';
part 'assignment_event.dart';
part 'assignment_state.dart';

class AssignmentBloc extends Bloc<AssignmentEvent, AssignmentState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  AssignmentBloc(this.assignmentRemoteDatasource) : super(const _Initial()) {
    on<_GetAssignment>(
      (event, emit) async {
        emit(const _Loading());

        final response =
            await assignmentRemoteDatasource.getAssignment(event.id);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_getAssignmentSuccess(r)),
        );
      },
    );
  }
}
