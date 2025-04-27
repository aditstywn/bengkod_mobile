import 'dart:convert';
import 'dart:io';

class CreateDiscussionsRequestModel {
  final int articleId;
  final String title;
  final String comment;
  final List<File>? images;

  CreateDiscussionsRequestModel({
    required this.articleId,
    required this.title,
    required this.comment,
    required this.images,
  });

  Map<String, String> toMap() {
    return <String, String>{
      'article_id': articleId.toString(),
      'title': title,
      'comment': comment,
      // 'images': images != null
      //     ? images!.map((e) => e.path).toList().toString()
      //     : '[]',
    };
  }

  String toJson() => json.encode(toMap());
}
