part of 'feedback_bloc.dart';

@freezed
class FeedbackState with _$FeedbackState {
  const factory FeedbackState.initial() = _Initial;
  const factory FeedbackState.loading() = _Loading;
  const factory FeedbackState.feedbackSuccess(
    FeedbackResponseModel feedback,
    GenerateCertificateResponseModel certificate,
  ) = _FeedbackSuccess;
  const factory FeedbackState.getCertificateSuccess(
      GetCertificateResponseModel certificate) = _GetCertificateSuccess;
  const factory FeedbackState.error(String message) = _Error;
}
