part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = _Initial;
  const factory SettingsState.loading() = _Loading;
  const factory SettingsState.updatePasswordSuccess(
          UpdatePasswordResponseModel updatePasswordResponseModel) =
      _UpdatePasswordSuccess;
  const factory SettingsState.error(String message) = _Error;
}
