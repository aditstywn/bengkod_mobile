part of 'instructor_bloc.dart';

@freezed
class InstructorState with _$InstructorState {
  const factory InstructorState.initial() = _Initial;
  const factory InstructorState.loading() = _Loading;
  const factory InstructorState.getInstructorSuccess(
          InstructorClassResponseModel instructorClassResponseModel) =
      _GetInstructorSuccess;
  const factory InstructorState.error(String message) = _Error;
}
