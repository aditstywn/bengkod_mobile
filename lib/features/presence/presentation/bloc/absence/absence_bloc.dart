import 'package:bengkod_mobile_app/features/presence/data/datasource/presence_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/presence/data/models/request/izin_request_model.dart';
import 'package:bengkod_mobile_app/features/presence/data/models/response/absence_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absence_bloc.freezed.dart';
part 'absence_event.dart';
part 'absence_state.dart';

class AbsenceBloc extends Bloc<AbsenceEvent, AbsenceState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;
  AbsenceBloc(
    this.presenceRemoteDatasource,
  ) : super(const _Initial()) {
    on<_Absence>((event, emit) async {
      emit(const _Loading());

      final response = await presenceRemoteDatasource.absence(event.izin);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_AbsenceSuccess(r)),
      );
    });
  }
}
