import 'dart:convert';

class FeedbackRequestModel {
  final int? rating;
  final String? comment;

  FeedbackRequestModel({
    this.rating,
    this.comment,
  });

  factory FeedbackRequestModel.fromJson(String str) =>
      FeedbackRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory FeedbackRequestModel.fromMap(Map<String, dynamic> json) =>
      FeedbackRequestModel(
        rating: json["rating"],
        comment: json["comment"],
      );

  Map<String, dynamic> toMap() => {
        "rating": rating,
        "comment": comment,
      };
}
