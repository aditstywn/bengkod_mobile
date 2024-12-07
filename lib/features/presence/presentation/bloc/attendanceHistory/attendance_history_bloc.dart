import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/presence_remote_datasource.dart';
import '../../../data/model/response/attendance_history_response_model.dart';

part 'attendance_history_event.dart';
part 'attendance_history_state.dart';
part 'attendance_history_bloc.freezed.dart';

class AttendanceHistoryBloc
    extends Bloc<AttendanceHistoryEvent, AttendanceHistoryState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;
  AttendanceHistoryBloc(this.presenceRemoteDatasource)
      : super(const _Initial()) {
    on<_GetAttendaceHistory>((event, emit) async {
      emit(const _Loading());
      final response = await presenceRemoteDatasource.getAttendanceHistory();
      response.fold(
        (l) {
          emit(_Error(l));
        },
        (r) {
          emit(_GetAttendaceHistorySuccess(r));
        },
      );
    });
  }
}
