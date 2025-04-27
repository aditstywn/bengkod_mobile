import 'package:bengkod_mobile_app/features/courses/data/datasource/courses_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/request/feedback_request_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/feedback_response_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/generate_certificate_response_model.dart';
import 'package:bengkod_mobile_app/features/courses/data/models/response/get_certificate_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_event.dart';
part 'feedback_state.dart';
part 'feedback_bloc.freezed.dart';

class FeedbackBloc extends Bloc<FeedbackEvent, FeedbackState> {
  final CoursesRemoteDatasource _coursesRemoteDatasource;
  FeedbackBloc(this._coursesRemoteDatasource) : super(_Initial()) {
    on<_Feedback>((event, emit) async {
      emit(_Loading());
      final result = await _coursesRemoteDatasource.feedback(
          event.idCourse, event.feedback);

      final generateCertificate =
          await _coursesRemoteDatasource.generateCertificate(event.idCourse);

      result.fold(
        (l) => emit(_Error(l)),
        (f) {
          generateCertificate.fold(
            (l) => emit(_Error(l)),
            (c) {
              emit(_FeedbackSuccess(f, c));
            },
          );
        },
      );
    });
    on<_GetCertificate>((event, emit) async {
      emit(_Loading());
      final result =
          await _coursesRemoteDatasource.getCertificate(event.idCourse);

      result.fold(
        (l) => emit(_Error(l)),
        (c) {
          emit(_GetCertificateSuccess(c));
        },
      );
    });
  }
}
