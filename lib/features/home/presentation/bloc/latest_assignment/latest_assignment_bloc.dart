import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasorce/home_remote_datasource.dart';
import '../../../data/models/response/latest_assignment_response_model.dart';

part 'latest_assignment_bloc.freezed.dart';
part 'latest_assignment_event.dart';
part 'latest_assignment_state.dart';

class LatestAssignmentBloc
    extends Bloc<LatestAssignmentEvent, LatestAssignmentState> {
  final HomeRemoteDatasource homeRemoteDatasource;
  LatestAssignmentBloc(
    this.homeRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetLatestAssignment>((event, emit) async {
      emit(const _Loading());

      final response = await homeRemoteDatasource.getLatestAssignment();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetLatestAssignmentSuccess(r)),
      );
    });
  }
}
