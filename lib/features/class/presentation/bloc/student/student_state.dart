part of 'student_bloc.dart';

@freezed
class StudentState with _$StudentState {
  const factory StudentState.initial() = _Initial;
  const factory StudentState.loading() = _Loading;
  const factory StudentState.getStudentSuccess(
      StudentClassResponseModel studentClassResponseModel) = _GetStudentSuccess;
  const factory StudentState.error(String message) = _Error;
}
