import 'dart:convert';
import 'dart:io';

class UpdateDiscussionsRequestModel {
  final String method = 'PATCH';
  final int articleId;
  final String title;
  final String comment;
  final List<File>? images;
  final List<String>? imagesDeleted;

  UpdateDiscussionsRequestModel({
    required this.articleId,
    required this.title,
    required this.comment,
    required this.images,
    required this.imagesDeleted,
  });

  Map<String, String> toMap() {
    return <String, String>{
      '_method': method,
      'article_id': articleId.toString(),
      'title': title,
      'comment': comment,
    };
  }

  String toJson() => json.encode(toMap());
}
