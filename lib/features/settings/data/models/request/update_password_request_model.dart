import 'dart:convert';

class UpdatePasswordRequestModel {
  final String oldPassword;
  final String newPassword;
  final String retypePassword;

  UpdatePasswordRequestModel({
    required this.oldPassword,
    required this.newPassword,
    required this.retypePassword,
  });

  factory UpdatePasswordRequestModel.fromJson(String str) =>
      UpdatePasswordRequestModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UpdatePasswordRequestModel.fromMap(Map<String, dynamic> json) =>
      UpdatePasswordRequestModel(
        oldPassword: json["old_password"],
        newPassword: json["new_password"],
        retypePassword: json["retype_password"],
      );

  Map<String, dynamic> toMap() => {
        "old_password": oldPassword,
        "new_password": newPassword,
        "retype_password": retypePassword,
      };
}
