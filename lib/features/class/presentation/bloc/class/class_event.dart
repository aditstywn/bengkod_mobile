part of 'class_bloc.dart';

@freezed
class ClassEvent with _$ClassEvent {
  const factory ClassEvent.started() = _Started;
  const factory ClassEvent.getClass() = _GetClass;
}
