import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/response/class_assignment_response_model.dart';

part 'class_assignment_bloc.freezed.dart';
part 'class_assignment_event.dart';
part 'class_assignment_state.dart';

class ClassAssignmentBloc
    extends Bloc<ClassAssignmentEvent, ClassAssignmentState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  ClassAssignmentBloc(this.assignmentRemoteDatasource)
      : super(const _Initial()) {
    on<_GetClassAssignment>(
      (event, emit) async {
        emit(const _Loading());

        final response = await assignmentRemoteDatasource.getClassAssignment();

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_getClassAssignmentSuccess(r)),
        );
      },
    );
  }
}
