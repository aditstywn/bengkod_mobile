import 'dart:convert';

class AnswerRequestModel {
  final int? questionId;
  final int? answerId;

  AnswerRequestModel({
    this.questionId,
    this.answerId,
  });

  factory AnswerRequestModel.fromJson(String str) =>
      AnswerRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AnswerRequestModel.fromMap(Map<String, dynamic> json) =>
      AnswerRequestModel(
        questionId: json["question_id"],
        answerId: json["answer_id"],
      );

  Map<String, dynamic> toMap() => {
        "question_id": questionId,
        "answer_id": answerId,
      };
}
