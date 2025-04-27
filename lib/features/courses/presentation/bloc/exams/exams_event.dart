part of 'exams_bloc.dart';

@freezed
class ExamsEvent with _$ExamsEvent {
  const factory ExamsEvent.started() = _Started;
  const factory ExamsEvent.createExams(int idCourse, int? page) = _CreateExams;
  const factory ExamsEvent.detailInformationExams(int idCourse) =
      _DetailInformationExams;
}
