part of 'scan_qr_bloc.dart';

@freezed
class ScanQrState with _$ScanQrState {
  const factory ScanQrState.initial() = _Initial;
  const factory ScanQrState.loading() = _Loading;
  const factory ScanQrState.scanQrSuccess(
      ScanQrResponseModel scanQrResponseModel) = _ScanQrSuccess;
  const factory ScanQrState.error(String message) = _Error;
}
