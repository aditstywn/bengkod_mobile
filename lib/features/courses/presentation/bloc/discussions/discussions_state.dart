part of 'discussions_bloc.dart';

@freezed
class DiscussionsState with _$DiscussionsState {
  const factory DiscussionsState.initial() = _Initial;
  const factory DiscussionsState.loading() = _Loading;
  const factory DiscussionsState.createDiscussionsSuccess(
      CreateDiscussionsResponseModel discussions) = _CreateDiscussionsSuccess;
  const factory DiscussionsState.updateDiscussionsSuccess(
      UpdateDiscussionsResponseModel discussions) = _UpdateDiscussionsSuccess;
  const factory DiscussionsState.discussionSuccess(
      DiscussionsResponseModel discussions) = _DiscussionSuccess;
  const factory DiscussionsState.deleteDiscussionsSuccess(
      DeleteDiscussionsResponseModel discussions) = _DeleteDiscussionsSuccess;

  const factory DiscussionsState.error(String message) = _Error;
}
