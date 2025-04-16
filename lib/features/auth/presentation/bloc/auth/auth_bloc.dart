import 'package:bengkod_mobile_app/features/auth/data/datasource/auth_remote_datasource.dart';
import 'package:bengkod_mobile_app/features/auth/data/models/request/login_request_model.dart';
import 'package:bengkod_mobile_app/features/auth/data/models/response/logout_response_model.dart';
import 'package:bengkod_mobile_app/features/auth/data/models/response/refresh_token_response_model.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/response/login_response_model.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRemoteDatasource authRemoteDatasource;
  AuthBloc(this.authRemoteDatasource) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Loading());

      final response =
          await authRemoteDatasource.login(event.loginRequestModel);

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_LoginSuccess(r)),
      );
    });

    on<_Logout>((event, emit) async {
      emit(const _Loading());

      final response = await authRemoteDatasource.logout();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_LogoutSuccess(r)),
      );
    });

    on<_RefreshToken>((event, emit) async {
      emit(const _Loading());

      final response = await authRemoteDatasource.refreshToken();

      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_RefreshTokenSuccess(r)),
      );
    });
  }
}
