part of 'start_exams_bloc.dart';

@freezed
class StartExamsState with _$StartExamsState {
  const factory StartExamsState.initial() = _Initial;
  const factory StartExamsState.loading() = _Loading;

  const factory StartExamsState.startExamsSuccess(
      StartExamResponseModel start) = _startExamsSuccess;
  const factory StartExamsState.detailInformationExamsSuccess(
          DetailExamsInformationResponseModel detailInformation) =
      _DetailInformationExamsSuccess;
  const factory StartExamsState.error(String message) = _Error;
}
