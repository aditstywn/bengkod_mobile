part of 'certificate_bloc.dart';

@freezed
class CertificateState with _$CertificateState {
  const factory CertificateState.initial() = _Initial;
  const factory CertificateState.loading() = _Loading;
  const factory CertificateState.certificateSuccess(
      AllCertificateResponseModel certificate) = _CertificateSuccess;
  const factory CertificateState.error(String message) = _Error;
}
