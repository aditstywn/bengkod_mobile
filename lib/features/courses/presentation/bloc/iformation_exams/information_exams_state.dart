part of 'information_exams_bloc.dart';

@freezed
class InformationExamsState with _$InformationExamsState {
  const factory InformationExamsState.initial() = _Initial;
  const factory InformationExamsState.loading() = _Loading;
  const factory InformationExamsState.informationExamsSuccess(
      InformartionExamsResponseModel information) = _InformationExamsSuccess;

  const factory InformationExamsState.error(String message) = _Error;
}
