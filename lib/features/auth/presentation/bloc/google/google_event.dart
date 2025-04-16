part of 'google_bloc.dart';

@freezed
class GoogleEvent with _$GoogleEvent {
  const factory GoogleEvent.started() = _Started;
  const factory GoogleEvent.googleSignIn(String idToken) = _GoogleSignIn;
}
