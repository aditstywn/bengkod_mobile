import 'package:bengkod_mobile_app/features/certificate/data/datasource/certificate_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/certificate/data/models/response/all_certificate_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate_event.dart';
part 'certificate_state.dart';
part 'certificate_bloc.freezed.dart';

class CertificateBloc extends Bloc<CertificateEvent, CertificateState> {
  final CertificateRemoteDatasource certificateRemoteDatasource;
  CertificateBloc(this.certificateRemoteDatasource) : super(_Initial()) {
    on<_Certificate>((event, emit) async {
      emit(_Loading());
      final result =
          await certificateRemoteDatasource.certificate(event.search);
      result.fold(
        (error) => emit(
          _Error(error),
        ),
        (certificate) => emit(
          _CertificateSuccess(certificate),
        ),
      );
    });
  }
}
