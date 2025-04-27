part of 'feedback_bloc.dart';

@freezed
class FeedbackEvent with _$FeedbackEvent {
  const factory FeedbackEvent.started() = _Started;
  const factory FeedbackEvent.feedback(
      FeedbackRequestModel feedback, int idCourse) = _Feedback;
  const factory FeedbackEvent.getCertificate(int idCourse) = _GetCertificate;
}
