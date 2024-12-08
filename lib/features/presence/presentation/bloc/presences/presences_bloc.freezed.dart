// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'presences_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PresencesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass) getPresences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass)? getPresences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass)? getPresences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresences value) getPresences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresences value)? getPresences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresences value)? getPresences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresencesEventCopyWith<$Res> {
  factory $PresencesEventCopyWith(
          PresencesEvent value, $Res Function(PresencesEvent) then) =
      _$PresencesEventCopyWithImpl<$Res, PresencesEvent>;
}

/// @nodoc
class _$PresencesEventCopyWithImpl<$Res, $Val extends PresencesEvent>
    implements $PresencesEventCopyWith<$Res> {
  _$PresencesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PresencesEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'PresencesEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass) getPresences,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass)? getPresences,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass)? getPresences,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresences value) getPresences,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresences value)? getPresences,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresences value)? getPresences,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PresencesEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetPresencesImplCopyWith<$Res> {
  factory _$$GetPresencesImplCopyWith(
          _$GetPresencesImpl value, $Res Function(_$GetPresencesImpl) then) =
      __$$GetPresencesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idClass});
}

/// @nodoc
class __$$GetPresencesImplCopyWithImpl<$Res>
    extends _$PresencesEventCopyWithImpl<$Res, _$GetPresencesImpl>
    implements _$$GetPresencesImplCopyWith<$Res> {
  __$$GetPresencesImplCopyWithImpl(
      _$GetPresencesImpl _value, $Res Function(_$GetPresencesImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idClass = null,
  }) {
    return _then(_$GetPresencesImpl(
      null == idClass
          ? _value.idClass
          : idClass // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetPresencesImpl implements _GetPresences {
  const _$GetPresencesImpl(this.idClass);

  @override
  final int idClass;

  @override
  String toString() {
    return 'PresencesEvent.getPresences(idClass: $idClass)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPresencesImpl &&
            (identical(other.idClass, idClass) || other.idClass == idClass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idClass);

  /// Create a copy of PresencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPresencesImplCopyWith<_$GetPresencesImpl> get copyWith =>
      __$$GetPresencesImplCopyWithImpl<_$GetPresencesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass) getPresences,
  }) {
    return getPresences(idClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass)? getPresences,
  }) {
    return getPresences?.call(idClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass)? getPresences,
    required TResult orElse(),
  }) {
    if (getPresences != null) {
      return getPresences(idClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetPresences value) getPresences,
  }) {
    return getPresences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetPresences value)? getPresences,
  }) {
    return getPresences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetPresences value)? getPresences,
    required TResult orElse(),
  }) {
    if (getPresences != null) {
      return getPresences(this);
    }
    return orElse();
  }
}

abstract class _GetPresences implements PresencesEvent {
  const factory _GetPresences(final int idClass) = _$GetPresencesImpl;

  int get idClass;

  /// Create a copy of PresencesEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPresencesImplCopyWith<_$GetPresencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PresencesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)
        getPresencesSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPresencesSuccess value) getPresencesSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PresencesStateCopyWith<$Res> {
  factory $PresencesStateCopyWith(
          PresencesState value, $Res Function(PresencesState) then) =
      _$PresencesStateCopyWithImpl<$Res, PresencesState>;
}

/// @nodoc
class _$PresencesStateCopyWithImpl<$Res, $Val extends PresencesState>
    implements $PresencesStateCopyWith<$Res> {
  _$PresencesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$PresencesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'PresencesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)
        getPresencesSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPresencesSuccess value) getPresencesSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PresencesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$PresencesStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'PresencesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)
        getPresencesSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPresencesSuccess value) getPresencesSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements PresencesState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetPresencesSuccessImplCopyWith<$Res> {
  factory _$$GetPresencesSuccessImplCopyWith(_$GetPresencesSuccessImpl value,
          $Res Function(_$GetPresencesSuccessImpl) then) =
      __$$GetPresencesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {PresencesResponseModel presences,
      AttendanceHistoryResponseModel attendances,
      AbsenceHistoryResponseModel absences});
}

/// @nodoc
class __$$GetPresencesSuccessImplCopyWithImpl<$Res>
    extends _$PresencesStateCopyWithImpl<$Res, _$GetPresencesSuccessImpl>
    implements _$$GetPresencesSuccessImplCopyWith<$Res> {
  __$$GetPresencesSuccessImplCopyWithImpl(_$GetPresencesSuccessImpl _value,
      $Res Function(_$GetPresencesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? presences = null,
    Object? attendances = null,
    Object? absences = null,
  }) {
    return _then(_$GetPresencesSuccessImpl(
      null == presences
          ? _value.presences
          : presences // ignore: cast_nullable_to_non_nullable
              as PresencesResponseModel,
      null == attendances
          ? _value.attendances
          : attendances // ignore: cast_nullable_to_non_nullable
              as AttendanceHistoryResponseModel,
      null == absences
          ? _value.absences
          : absences // ignore: cast_nullable_to_non_nullable
              as AbsenceHistoryResponseModel,
    ));
  }
}

/// @nodoc

class _$GetPresencesSuccessImpl implements _GetPresencesSuccess {
  const _$GetPresencesSuccessImpl(
      this.presences, this.attendances, this.absences);

  @override
  final PresencesResponseModel presences;
  @override
  final AttendanceHistoryResponseModel attendances;
  @override
  final AbsenceHistoryResponseModel absences;

  @override
  String toString() {
    return 'PresencesState.getPresencesSuccess(presences: $presences, attendances: $attendances, absences: $absences)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPresencesSuccessImpl &&
            (identical(other.presences, presences) ||
                other.presences == presences) &&
            (identical(other.attendances, attendances) ||
                other.attendances == attendances) &&
            (identical(other.absences, absences) ||
                other.absences == absences));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, presences, attendances, absences);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPresencesSuccessImplCopyWith<_$GetPresencesSuccessImpl> get copyWith =>
      __$$GetPresencesSuccessImplCopyWithImpl<_$GetPresencesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)
        getPresencesSuccess,
    required TResult Function(String message) error,
  }) {
    return getPresencesSuccess(presences, attendances, absences);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult? Function(String message)? error,
  }) {
    return getPresencesSuccess?.call(presences, attendances, absences);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getPresencesSuccess != null) {
      return getPresencesSuccess(presences, attendances, absences);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPresencesSuccess value) getPresencesSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getPresencesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getPresencesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getPresencesSuccess != null) {
      return getPresencesSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetPresencesSuccess implements PresencesState {
  const factory _GetPresencesSuccess(
      final PresencesResponseModel presences,
      final AttendanceHistoryResponseModel attendances,
      final AbsenceHistoryResponseModel absences) = _$GetPresencesSuccessImpl;

  PresencesResponseModel get presences;
  AttendanceHistoryResponseModel get attendances;
  AbsenceHistoryResponseModel get absences;

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPresencesSuccessImplCopyWith<_$GetPresencesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$PresencesStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PresencesState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)
        getPresencesSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            PresencesResponseModel presences,
            AttendanceHistoryResponseModel attendances,
            AbsenceHistoryResponseModel absences)?
        getPresencesSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetPresencesSuccess value) getPresencesSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetPresencesSuccess value)? getPresencesSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements PresencesState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of PresencesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
