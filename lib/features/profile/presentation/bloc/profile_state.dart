part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loading() = _Loading;
  const factory ProfileState.getProfileSuccess(
      ProfileResponseModel profileResponseModel) = _GetProfileSuccess;
  const factory ProfileState.error(String message) = _Error;
}
