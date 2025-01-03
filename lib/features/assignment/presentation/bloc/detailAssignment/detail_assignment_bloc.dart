import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/assignment_remote_datasource.dart';
import '../../../data/models/response/detail_aasigment_response_model.dart';

part 'detail_assignment_bloc.freezed.dart';
part 'detail_assignment_event.dart';
part 'detail_assignment_state.dart';

class DetailAssignmentBloc
    extends Bloc<DetailAssignmentEvent, DetailAssignmentState> {
  final AssignmentRemoteDatasource assignmentRemoteDatasource;
  DetailAssignmentBloc(this.assignmentRemoteDatasource)
      : super(const _Initial()) {
    on<_GetDetailAssignment>(
      (event, emit) async {
        emit(const _Loading());

        final response = await assignmentRemoteDatasource.getDetailAssignment(
            event.idClass, event.idAssignment);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_getDetailAssignmentSuccess(r)),
        );
      },
    );

    on<_DownloadFile>(
      (event, emit) async {
        emit(const _Loading());

        final response =
            await assignmentRemoteDatasource.launchInBrowser(event.url);

        response.fold(
          (l) => emit(_Error(l)),
          (r) => emit(_DownloadFileSuccess(r)),
        );
      },
    );
  }
}
