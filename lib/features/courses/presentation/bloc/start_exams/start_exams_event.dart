part of 'start_exams_bloc.dart';

@freezed
class StartExamsEvent with _$StartExamsEvent {
  const factory StartExamsEvent.started() = _Started;
  const factory StartExamsEvent.StartExams(int idCourse, int? page) =
      _StartExams;
  const factory StartExamsEvent.detailInformationExams(int idCourse) =
      _DetailInformationExams;
}
