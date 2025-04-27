import 'dart:convert';

class AddReplyRequestModel {
  final String? commentReply;

  AddReplyRequestModel({
    this.commentReply,
  });

  factory AddReplyRequestModel.fromJson(String str) =>
      AddReplyRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory AddReplyRequestModel.fromMap(Map<String, dynamic> json) =>
      AddReplyRequestModel(
        commentReply: json["comment_reply"],
      );

  Map<String, dynamic> toMap() => {
        "comment_reply": commentReply,
      };
}
