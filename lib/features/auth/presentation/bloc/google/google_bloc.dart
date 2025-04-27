import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/datasource/auth_remote_datasource.dart';
import '../../../data/models/response/login_response_model.dart'
    show LoginResponseModel;

part 'google_event.dart';
part 'google_state.dart';
part 'google_bloc.freezed.dart';

class GoogleBloc extends Bloc<GoogleEvent, GoogleState> {
  final AuthRemoteDatasource authRemoteDatasource;
  GoogleBloc(
    this.authRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GoogleSignIn>((event, emit) async {
      emit(const _Loading());

      final result = await authRemoteDatasource.googleSignIn(event.idToken);

      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_GoogleSignInSucess(r)),
      );
    });
  }
}
