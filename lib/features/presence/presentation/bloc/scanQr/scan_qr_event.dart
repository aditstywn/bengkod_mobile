part of 'scan_qr_bloc.dart';

@freezed
class ScanQrEvent with _$ScanQrEvent {
  const factory ScanQrEvent.started() = _Started;
  const factory ScanQrEvent.scanQr(String qrCodeLink) = _ScanQr;
}
