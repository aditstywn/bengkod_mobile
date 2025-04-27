part of 'detail_discussions_bloc.dart';

@freezed
class DetailDiscussionsEvent with _$DetailDiscussionsEvent {
  const factory DetailDiscussionsEvent.started() = _Started;
  const factory DetailDiscussionsEvent.detailDiscussion(
      int idCourse, int idDiscussion) = _DetailDiscussion;
}
