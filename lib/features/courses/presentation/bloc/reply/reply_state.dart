part of 'reply_bloc.dart';

@freezed
class ReplyState with _$ReplyState {
  const factory ReplyState.initial() = _Initial;
  const factory ReplyState.loading() = _Loading;
  const factory ReplyState.allReplySuccess(AllReplyResponseModel allReply) =
      _AllReplySuccess;
  const factory ReplyState.addReplySuccess(AddReplyResponseModel reply) =
      _AddReplySuccess;
  const factory ReplyState.updateReplySuccess(UpdateReplyResponseModel update) =
      _UpdateReplySuccess;
  const factory ReplyState.deleteReplySuccess(AllReplyResponseModel delet) =
      _DeleteReplySuccess;
  const factory ReplyState.error(String message) = _Error;
}
