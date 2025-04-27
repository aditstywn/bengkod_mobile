part of 'answer_bloc.dart';

@freezed
class AnswerEvent with _$AnswerEvent {
  const factory AnswerEvent.started() = _Started;
  const factory AnswerEvent.answer(AnswerRequestModel answer, int idCourse) =
      _Answer;
  const factory AnswerEvent.finish(int idCourse) = _Finish;
}
