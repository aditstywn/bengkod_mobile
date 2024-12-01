// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'active_course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActiveCourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getActiveCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getActiveCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getActiveCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetActiveCourse value) getActiveCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetActiveCourse value)? getActiveCourse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetActiveCourse value)? getActiveCourse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCourseEventCopyWith<$Res> {
  factory $ActiveCourseEventCopyWith(
          ActiveCourseEvent value, $Res Function(ActiveCourseEvent) then) =
      _$ActiveCourseEventCopyWithImpl<$Res, ActiveCourseEvent>;
}

/// @nodoc
class _$ActiveCourseEventCopyWithImpl<$Res, $Val extends ActiveCourseEvent>
    implements $ActiveCourseEventCopyWith<$Res> {
  _$ActiveCourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveCourseEvent
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
    extends _$ActiveCourseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ActiveCourseEvent.started()';
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
    required TResult Function() getActiveCourse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getActiveCourse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getActiveCourse,
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
    required TResult Function(_GetActiveCourse value) getActiveCourse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetActiveCourse value)? getActiveCourse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetActiveCourse value)? getActiveCourse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ActiveCourseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetActiveCourseImplCopyWith<$Res> {
  factory _$$GetActiveCourseImplCopyWith(_$GetActiveCourseImpl value,
          $Res Function(_$GetActiveCourseImpl) then) =
      __$$GetActiveCourseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetActiveCourseImplCopyWithImpl<$Res>
    extends _$ActiveCourseEventCopyWithImpl<$Res, _$GetActiveCourseImpl>
    implements _$$GetActiveCourseImplCopyWith<$Res> {
  __$$GetActiveCourseImplCopyWithImpl(
      _$GetActiveCourseImpl _value, $Res Function(_$GetActiveCourseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetActiveCourseImpl implements _GetActiveCourse {
  const _$GetActiveCourseImpl();

  @override
  String toString() {
    return 'ActiveCourseEvent.getActiveCourse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetActiveCourseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getActiveCourse,
  }) {
    return getActiveCourse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getActiveCourse,
  }) {
    return getActiveCourse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getActiveCourse,
    required TResult orElse(),
  }) {
    if (getActiveCourse != null) {
      return getActiveCourse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetActiveCourse value) getActiveCourse,
  }) {
    return getActiveCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetActiveCourse value)? getActiveCourse,
  }) {
    return getActiveCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetActiveCourse value)? getActiveCourse,
    required TResult orElse(),
  }) {
    if (getActiveCourse != null) {
      return getActiveCourse(this);
    }
    return orElse();
  }
}

abstract class _GetActiveCourse implements ActiveCourseEvent {
  const factory _GetActiveCourse() = _$GetActiveCourseImpl;
}

/// @nodoc
mixin _$ActiveCourseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ActiveCourseResponseModel activeCourseResponseModel)
        getActiveCourseSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetActiveCourseSuccess value)
        getActiveCourseSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveCourseStateCopyWith<$Res> {
  factory $ActiveCourseStateCopyWith(
          ActiveCourseState value, $Res Function(ActiveCourseState) then) =
      _$ActiveCourseStateCopyWithImpl<$Res, ActiveCourseState>;
}

/// @nodoc
class _$ActiveCourseStateCopyWithImpl<$Res, $Val extends ActiveCourseState>
    implements $ActiveCourseStateCopyWith<$Res> {
  _$ActiveCourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActiveCourseState
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
    extends _$ActiveCourseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ActiveCourseState.initial()';
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
            ActiveCourseResponseModel activeCourseResponseModel)
        getActiveCourseSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
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
    required TResult Function(_GetActiveCourseSuccess value)
        getActiveCourseSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActiveCourseState {
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
    extends _$ActiveCourseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ActiveCourseState.loading()';
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
            ActiveCourseResponseModel activeCourseResponseModel)
        getActiveCourseSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
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
    required TResult Function(_GetActiveCourseSuccess value)
        getActiveCourseSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActiveCourseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GetActiveCourseSuccessImplCopyWith<$Res> {
  factory _$$GetActiveCourseSuccessImplCopyWith(
          _$GetActiveCourseSuccessImpl value,
          $Res Function(_$GetActiveCourseSuccessImpl) then) =
      __$$GetActiveCourseSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActiveCourseResponseModel activeCourseResponseModel});
}

/// @nodoc
class __$$GetActiveCourseSuccessImplCopyWithImpl<$Res>
    extends _$ActiveCourseStateCopyWithImpl<$Res, _$GetActiveCourseSuccessImpl>
    implements _$$GetActiveCourseSuccessImplCopyWith<$Res> {
  __$$GetActiveCourseSuccessImplCopyWithImpl(
      _$GetActiveCourseSuccessImpl _value,
      $Res Function(_$GetActiveCourseSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activeCourseResponseModel = null,
  }) {
    return _then(_$GetActiveCourseSuccessImpl(
      null == activeCourseResponseModel
          ? _value.activeCourseResponseModel
          : activeCourseResponseModel // ignore: cast_nullable_to_non_nullable
              as ActiveCourseResponseModel,
    ));
  }
}

/// @nodoc

class _$GetActiveCourseSuccessImpl implements _GetActiveCourseSuccess {
  const _$GetActiveCourseSuccessImpl(this.activeCourseResponseModel);

  @override
  final ActiveCourseResponseModel activeCourseResponseModel;

  @override
  String toString() {
    return 'ActiveCourseState.getActiveCourseSuccess(activeCourseResponseModel: $activeCourseResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetActiveCourseSuccessImpl &&
            (identical(other.activeCourseResponseModel,
                    activeCourseResponseModel) ||
                other.activeCourseResponseModel == activeCourseResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activeCourseResponseModel);

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetActiveCourseSuccessImplCopyWith<_$GetActiveCourseSuccessImpl>
      get copyWith => __$$GetActiveCourseSuccessImplCopyWithImpl<
          _$GetActiveCourseSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            ActiveCourseResponseModel activeCourseResponseModel)
        getActiveCourseSuccess,
    required TResult Function(String message) error,
  }) {
    return getActiveCourseSuccess(activeCourseResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult? Function(String message)? error,
  }) {
    return getActiveCourseSuccess?.call(activeCourseResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getActiveCourseSuccess != null) {
      return getActiveCourseSuccess(activeCourseResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GetActiveCourseSuccess value)
        getActiveCourseSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getActiveCourseSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getActiveCourseSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getActiveCourseSuccess != null) {
      return getActiveCourseSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetActiveCourseSuccess implements ActiveCourseState {
  const factory _GetActiveCourseSuccess(
          final ActiveCourseResponseModel activeCourseResponseModel) =
      _$GetActiveCourseSuccessImpl;

  ActiveCourseResponseModel get activeCourseResponseModel;

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetActiveCourseSuccessImplCopyWith<_$GetActiveCourseSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ActiveCourseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActiveCourseState
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
    return 'ActiveCourseState.error(message: $message)';
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

  /// Create a copy of ActiveCourseState
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
            ActiveCourseResponseModel activeCourseResponseModel)
        getActiveCourseSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ActiveCourseResponseModel activeCourseResponseModel)?
        getActiveCourseSuccess,
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
    required TResult Function(_GetActiveCourseSuccess value)
        getActiveCourseSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GetActiveCourseSuccess value)? getActiveCourseSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ActiveCourseState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ActiveCourseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
