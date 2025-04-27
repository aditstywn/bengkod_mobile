part of 'certificate_bloc.dart';

@freezed
class CertificateEvent with _$CertificateEvent {
  const factory CertificateEvent.started() = _Started;
  const factory CertificateEvent.certificate(String? search) = _Certificate;
}
