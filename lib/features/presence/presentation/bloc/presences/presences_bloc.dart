// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bengkod_mobile_app/features/presence/data/datasource/presence_remote_datasource.dart';

import '../../../data/models/response/absence_history_response_model.dart';
import '../../../data/models/response/attendace_history_response_model.dart';
import '../../../data/models/response/presences_response_model.dart';

part 'presences_bloc.freezed.dart';
part 'presences_event.dart';
part 'presences_state.dart';

class PresencesBloc extends Bloc<PresencesEvent, PresencesState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;
  PresencesBloc(
    this.presenceRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetPresences>((event, emit) async {
      emit(const _Loading());

      final presences =
          await presenceRemoteDatasource.getPresences(event.idClass);

      final attendances = await presenceRemoteDatasource.getAttendanceHistory();

      final absences = await presenceRemoteDatasource.getAbsenceHistory();

      presences.fold(
        (l) => emit(_Error(l)),
        (presence) {
          attendances.fold(
            (l) => emit(_Error(l)),
            (attendance) {
              absences.fold(
                (l) => emit(_Error(l)),
                (absence) {
                  emit(_GetPresencesSuccess(presence, attendance, absence));
                },
              );
            },
          );
        },
      );
    });
  }
}
