import 'package:bengkod_mobile_app/features/presence/data/model/response/absence_history_response_model.dart';

import '../../../data/datasource/presence_remote_datasource.dart';
import '../../../data/model/response/attendance_history_response_model.dart';
import '../../../data/model/response/presences_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'presences_bloc.freezed.dart';
part 'presences_event.dart';
part 'presences_state.dart';

class PresencesBloc extends Bloc<PresencesEvent, PresencesState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;

  AttendanceHistoryResponseModel? attendanceData;
  AbsenceHistoryResponseModel? absenceData;

  PresencesBloc(
    this.presenceRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetPresences>(
      (event, emit) async {
        emit(const _Loading());

        final response =
            await presenceRemoteDatasource.getPresences(event.idClass);

        response.fold(
          (l) {
            emit(_Error(l));
          },
          (r) {
            emit(_GetPresencesSuccess(r));
          },
        );
      },
    );
  }
}
