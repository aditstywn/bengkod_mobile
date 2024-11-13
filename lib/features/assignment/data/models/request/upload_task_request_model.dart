import 'dart:io';

class UploadTaskRequestModel {
  final String comment;
  final File file;

  UploadTaskRequestModel({required this.comment, required this.file});

  Map<String, String> toMap() {
    return <String, String>{
      'comment': comment,
    };
  }
}
