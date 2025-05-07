import 'package:bengkod_mobile_app/features/courses/data/models/response/discussions/create_discussions_response_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/discussions/delete_discussions_response_model.dart';

import '../../../data/datasource/discussion_remote_datasource.dart';
import '../../../data/models/request/create_discussions_request_model.dart';
import '../../../data/models/request/update_discussions_request_model .dart';
import '../../../data/models/response/discussions/discussion_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/discussions/update_discussions_response_model.dart';

part 'discussions_event.dart';
part 'discussions_state.dart';
part 'discussions_bloc.freezed.dart';

class DiscussionsBloc extends Bloc<DiscussionsEvent, DiscussionsState> {
  final DiscussionRemoteDatasource discussionRemoteDatasource;
  DiscussionsBloc(this.discussionRemoteDatasource) : super(_Initial()) {
    on<_Discussion>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.discussion(event.idCourse,
          event.page, event.search, event.idArticle, event.sort);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_DiscussionSuccess(data)),
      );
    });

    on<_CreateDiscussions>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.createDiscussions(
          event.discussions, event.idCourse);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_CreateDiscussionsSuccess(data)),
      );
    });
    on<_DeleteDiscussion>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.deletDiscussion(
          event.idCourse, event.idDiscussions);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_DeleteDiscussionsSuccess(data)),
      );
    });
    on<_UpdateDiscussions>((event, emit) async {
      emit(_Loading());
      final result = await discussionRemoteDatasource.updateDiscussions(
          event.discussions, event.idCourse, event.idDiscussions);

      result.fold(
        (l) => emit(_Error(l)),
        (data) => emit(_UpdateDiscussionsSuccess(data)),
      );
    });
  }
}
