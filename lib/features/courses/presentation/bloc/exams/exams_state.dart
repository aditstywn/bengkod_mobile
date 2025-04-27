part of 'exams_bloc.dart';

@freezed
class ExamsState with _$ExamsState {
  const factory ExamsState.initial() = _Initial;
  const factory ExamsState.loading() = _Loading;
  const factory ExamsState.createExamsSuccess(CreateExamResponseModel cretae) =
      _CreateExamsSuccess;
  const factory ExamsState.startExamsSuccess(StartExamResponseModel satrt) =
      _startExamsSuccess;
  const factory ExamsState.error(String message) = _Error;
}
