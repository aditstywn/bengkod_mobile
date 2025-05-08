part of 'detail_discussions_bloc.dart';

@freezed
class DetailDiscussionsState with _$DetailDiscussionsState {
  const factory DetailDiscussionsState.initial() = _Initial;
  const factory DetailDiscussionsState.loading() = _Loading;
  const factory DetailDiscussionsState.detailDiscussionSuccess(
      ShowDiscussionsResponseModel discussion) = _DetailDiscussionSuccess;
  const factory DetailDiscussionsState.likeDiscussionSuccess(
      LikeDiscussionsResponseModel like) = _LikeDiscussionSuccess;
  const factory DetailDiscussionsState.error(String message) = _Error;
}
