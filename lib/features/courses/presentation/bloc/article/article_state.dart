part of 'article_bloc.dart';

@freezed
class ArticleState with _$ArticleState {
  const factory ArticleState.initial() = _Initial;
  const factory ArticleState.loading() = _Loading;
  const factory ArticleState.getArticleSuccess(
      ArticleResponseModel articleResponseModel) = _GetArticleSuccess;
  const factory ArticleState.error(String message) = _Error;
}
