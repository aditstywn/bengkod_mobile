import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/discussion_remote_datasource.dart';
import '../../../data/models/response/discussions/like_discussions_response_model.dart';
import '../../../data/models/response/discussions/show_discussions_response_model.dart';

part 'detail_discussions_bloc.freezed.dart';
part 'detail_discussions_event.dart';
part 'detail_discussions_state.dart';

class DetailDiscussionsBloc
    extends Bloc<DetailDiscussionsEvent, DetailDiscussionsState> {
  final DiscussionRemoteDatasource discussionRemoteDatasource;
  DetailDiscussionsBloc(this.discussionRemoteDatasource) : super(_Initial()) {
    on<_DetailDiscussion>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.detailDiscussion(
          event.idCourse, event.idDiscussion);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_DetailDiscussionSuccess(data)),
      );
    });
    on<_LikeDiscussions>((event, emit) async {
      emit(_Loading());
      final result =
          await discussionRemoteDatasource.likeDiscussions(event.idCourse);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_LikeDiscussionSuccess(data)),
      );
    });
  }
}
