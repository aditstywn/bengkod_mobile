import '../../../data/models/response/scan_qr_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/presence_remote_datasource.dart';

part 'scan_qr_event.dart';
part 'scan_qr_state.dart';
part 'scan_qr_bloc.freezed.dart';

class ScanQrBloc extends Bloc<ScanQrEvent, ScanQrState> {
  final PresenceRemoteDatasource presenceRemoteDatasource;
  ScanQrBloc(this.presenceRemoteDatasource) : super(const _Initial()) {
    on<_ScanQr>((event, emit) async {
      emit(const _Loading());

      final response = await presenceRemoteDatasource.scanQr(event.qrCodeLink);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_ScanQrSuccess(r)),
      );
    });
  }
}
