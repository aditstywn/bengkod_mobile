part of 'discussions_bloc.dart';

@freezed
class DiscussionsEvent with _$DiscussionsEvent {
  const factory DiscussionsEvent.started() = _Started;

  const factory DiscussionsEvent.discussion(int idCourse, int page,
      String? search, int? idArticle, String? sort) = _Discussion;
  const factory DiscussionsEvent.createDiscussions(
          CreateDiscussionsRequestModel discussions, int idCourse) =
      _CreateDiscussions;
  const factory DiscussionsEvent.updateDiscussions(
      UpdateDiscussionsRequestModel discussions,
      int idCourse,
      int idDiscussions) = _UpdateDiscussions;
  const factory DiscussionsEvent.deleteDiscussion(
      int idCourse, int idDiscussions) = _DeleteDiscussion;
}
