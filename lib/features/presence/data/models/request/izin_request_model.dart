import 'dart:io';

class IzinRequestModel {
  final int presenceId;
  final String absenceType;
  final String notes;
  final File file;

  IzinRequestModel(
      {required this.presenceId,
      required this.absenceType,
      required this.notes,
      required this.file});

  Map<String, String> toMap() {
    return <String, String>{
      'presence_id': presenceId.toString(),
      'absence_type': absenceType,
      'notes': notes,
    };
  }
}
