import '../../../data/datasource/courses_remote_datasource.dart';
import '../../../data/models/response/article_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_event.dart';
part 'article_state.dart';
part 'article_bloc.freezed.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  final CoursesRemoteDatasource coursesRemoteDatasource;
  ArticleBloc(this.coursesRemoteDatasource) : super(const _Initial()) {
    on<_GetArticle>((event, emit) async {
      emit(const _Loading());

      final response = await coursesRemoteDatasource.getArticle(
        event.idCourses,
        event.idArticle,
      );

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GetArticleSuccess(r)),
      );
    });
  }
}
