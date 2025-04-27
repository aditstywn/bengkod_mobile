part of 'information_exams_bloc.dart';

@freezed
class InformationExamsEvent with _$InformationExamsEvent {
  const factory InformationExamsEvent.started() = _Started;

  const factory InformationExamsEvent.informationExams(
      int idCourse, int? page) = _InformationExams;
}
