part of 'reply_bloc.dart';

@freezed
class ReplyEvent with _$ReplyEvent {
  const factory ReplyEvent.started() = _Started;
  const factory ReplyEvent.allReply(int idCourse, int idDiscussion, int? page) =
      _AllReply;
  const factory ReplyEvent.addReply(
      int idCourse, int idDiscussion, AddReplyRequestModel reply) = _AddReply;
  const factory ReplyEvent.updateReply(
          int idCourse, int idDiscussion, int idReply, String comment) =
      _UpdateReply;
  const factory ReplyEvent.deleteReply(
      int idCourse, int idDiscussion, int idReply) = _DeleteReply;
}
