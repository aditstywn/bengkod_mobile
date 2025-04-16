part of 'grades_bloc.dart';

@freezed
class GradesState with _$GradesState {
  const factory GradesState.initial() = _Initial;
  const factory GradesState.loading() = _Loading;
  const factory GradesState.getGradesSuccess(GradesResponseModel grades) =
      _GetGradesSuccess;
  const factory GradesState.error(String message) = _Error;
}
