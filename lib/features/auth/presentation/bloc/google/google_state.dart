part of 'google_bloc.dart';

@freezed
class GoogleState with _$GoogleState {
  const factory GoogleState.initial() = _Initial;
  const factory GoogleState.loading() = _Loading;
  const factory GoogleState.googleSignInSucess(
      LoginResponseModel loginResponseModel) = _GoogleSignInSucess;
  const factory GoogleState.error(String message) = _Error;
}
