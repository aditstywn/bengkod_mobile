import 'package:bengkod_mobile_app/features/courses/data/models/response/reply/update_reply_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/discussion_remote_datasource.dart';
import '../../../data/models/request/add_reply_request_model.dart';
import '../../../data/models/response/reply/add_reply_response_model.dart';
import '../../../data/models/response/reply/all_reply_response_model.dart';

part 'reply_bloc.freezed.dart';
part 'reply_event.dart';
part 'reply_state.dart';

class ReplyBloc extends Bloc<ReplyEvent, ReplyState> {
  final DiscussionRemoteDatasource discussionRemoteDatasource;
  ReplyBloc(this.discussionRemoteDatasource) : super(_Initial()) {
    on<_AllReply>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.allReply(
          event.idCourse, event.idDiscussion, event.page);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_AllReplySuccess(data)),
      );
    });
    on<_AddReply>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.addReply(
          event.idCourse, event.idDiscussion, event.reply);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_AddReplySuccess(data)),
      );
    });
    on<_UpdateReply>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.updateReply(
          event.idCourse, event.idDiscussion, event.idReply, event.comment);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_UpdateReplySuccess(data)),
      );
    });
    on<_DeleteReply>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.deleteReply(
          event.idCourse, event.idDiscussion, event.idReply);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_DeleteReplySuccess(data)),
      );
    });
  }
}
