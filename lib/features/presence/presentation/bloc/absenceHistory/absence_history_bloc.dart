import '../../../data/datasource/presence_remote_datasource.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/model/response/absence_history_response_model.dart';

part 'absence_history_event.dart';
part 'absence_history_state.dart';
part 'absence_history_bloc.freezed.dart';

class AbsenceHistoryBloc
    extends Bloc<AbsenceHistoryEvent, AbsenceHistoryState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;
  AbsenceHistoryBloc(this.presenceRemoteDatasource) : super(const _Initial()) {
    on<_GetAbsenceHistory>((event, emit) async {
      emit(const _Loading());

      final response = await presenceRemoteDatasource.getAbsenceHistory();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetAbsenceHistorySuccess(r)),
      );
    });
  }
}
