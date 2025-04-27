// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_discussions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailDiscussionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion) detailDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion)? detailDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion)? detailDiscussion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DetailDiscussion value) detailDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DetailDiscussion value)? detailDiscussion,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DetailDiscussion value)? detailDiscussion,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDiscussionsEventCopyWith<$Res> {
  factory $DetailDiscussionsEventCopyWith(DetailDiscussionsEvent value,
          $Res Function(DetailDiscussionsEvent) then) =
      _$DetailDiscussionsEventCopyWithImpl<$Res, DetailDiscussionsEvent>;
}

/// @nodoc
class _$DetailDiscussionsEventCopyWithImpl<$Res,
        $Val extends DetailDiscussionsEvent>
    implements $DetailDiscussionsEventCopyWith<$Res> {
  _$DetailDiscussionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailDiscussionsEvent
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
    extends _$DetailDiscussionsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DetailDiscussionsEvent.started()';
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
    required TResult Function(int idCourse, int idDiscussion) detailDiscussion,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion)? detailDiscussion,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion)? detailDiscussion,
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
    required TResult Function(_DetailDiscussion value) detailDiscussion,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DetailDiscussion value)? detailDiscussion,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DetailDiscussion value)? detailDiscussion,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailDiscussionsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$DetailDiscussionImplCopyWith<$Res> {
  factory _$$DetailDiscussionImplCopyWith(_$DetailDiscussionImpl value,
          $Res Function(_$DetailDiscussionImpl) then) =
      __$$DetailDiscussionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussion});
}

/// @nodoc
class __$$DetailDiscussionImplCopyWithImpl<$Res>
    extends _$DetailDiscussionsEventCopyWithImpl<$Res, _$DetailDiscussionImpl>
    implements _$$DetailDiscussionImplCopyWith<$Res> {
  __$$DetailDiscussionImplCopyWithImpl(_$DetailDiscussionImpl _value,
      $Res Function(_$DetailDiscussionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussion = null,
  }) {
    return _then(_$DetailDiscussionImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussion
          ? _value.idDiscussion
          : idDiscussion // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DetailDiscussionImpl implements _DetailDiscussion {
  const _$DetailDiscussionImpl(this.idCourse, this.idDiscussion);

  @override
  final int idCourse;
  @override
  final int idDiscussion;

  @override
  String toString() {
    return 'DetailDiscussionsEvent.detailDiscussion(idCourse: $idCourse, idDiscussion: $idDiscussion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDiscussionImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussion, idDiscussion) ||
                other.idDiscussion == idDiscussion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, idDiscussion);

  /// Create a copy of DetailDiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDiscussionImplCopyWith<_$DetailDiscussionImpl> get copyWith =>
      __$$DetailDiscussionImplCopyWithImpl<_$DetailDiscussionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion) detailDiscussion,
  }) {
    return detailDiscussion(idCourse, idDiscussion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion)? detailDiscussion,
  }) {
    return detailDiscussion?.call(idCourse, idDiscussion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion)? detailDiscussion,
    required TResult orElse(),
  }) {
    if (detailDiscussion != null) {
      return detailDiscussion(idCourse, idDiscussion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DetailDiscussion value) detailDiscussion,
  }) {
    return detailDiscussion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DetailDiscussion value)? detailDiscussion,
  }) {
    return detailDiscussion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DetailDiscussion value)? detailDiscussion,
    required TResult orElse(),
  }) {
    if (detailDiscussion != null) {
      return detailDiscussion(this);
    }
    return orElse();
  }
}

abstract class _DetailDiscussion implements DetailDiscussionsEvent {
  const factory _DetailDiscussion(final int idCourse, final int idDiscussion) =
      _$DetailDiscussionImpl;

  int get idCourse;
  int get idDiscussion;

  /// Create a copy of DetailDiscussionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailDiscussionImplCopyWith<_$DetailDiscussionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailDiscussionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShowDiscussionsResponseModel discussion)
        detailDiscussionSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailDiscussionSuccess value)
        detailDiscussionSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailDiscussionsStateCopyWith<$Res> {
  factory $DetailDiscussionsStateCopyWith(DetailDiscussionsState value,
          $Res Function(DetailDiscussionsState) then) =
      _$DetailDiscussionsStateCopyWithImpl<$Res, DetailDiscussionsState>;
}

/// @nodoc
class _$DetailDiscussionsStateCopyWithImpl<$Res,
        $Val extends DetailDiscussionsState>
    implements $DetailDiscussionsStateCopyWith<$Res> {
  _$DetailDiscussionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailDiscussionsState
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
    extends _$DetailDiscussionsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DetailDiscussionsState.initial()';
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
    required TResult Function(ShowDiscussionsResponseModel discussion)
        detailDiscussionSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
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
    required TResult Function(_DetailDiscussionSuccess value)
        detailDiscussionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailDiscussionsState {
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
    extends _$DetailDiscussionsStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DetailDiscussionsState.loading()';
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
    required TResult Function(ShowDiscussionsResponseModel discussion)
        detailDiscussionSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
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
    required TResult Function(_DetailDiscussionSuccess value)
        detailDiscussionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailDiscussionsState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$DetailDiscussionSuccessImplCopyWith<$Res> {
  factory _$$DetailDiscussionSuccessImplCopyWith(
          _$DetailDiscussionSuccessImpl value,
          $Res Function(_$DetailDiscussionSuccessImpl) then) =
      __$$DetailDiscussionSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ShowDiscussionsResponseModel discussion});
}

/// @nodoc
class __$$DetailDiscussionSuccessImplCopyWithImpl<$Res>
    extends _$DetailDiscussionsStateCopyWithImpl<$Res,
        _$DetailDiscussionSuccessImpl>
    implements _$$DetailDiscussionSuccessImplCopyWith<$Res> {
  __$$DetailDiscussionSuccessImplCopyWithImpl(
      _$DetailDiscussionSuccessImpl _value,
      $Res Function(_$DetailDiscussionSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discussion = null,
  }) {
    return _then(_$DetailDiscussionSuccessImpl(
      null == discussion
          ? _value.discussion
          : discussion // ignore: cast_nullable_to_non_nullable
              as ShowDiscussionsResponseModel,
    ));
  }
}

/// @nodoc

class _$DetailDiscussionSuccessImpl implements _DetailDiscussionSuccess {
  const _$DetailDiscussionSuccessImpl(this.discussion);

  @override
  final ShowDiscussionsResponseModel discussion;

  @override
  String toString() {
    return 'DetailDiscussionsState.detailDiscussionSuccess(discussion: $discussion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailDiscussionSuccessImpl &&
            (identical(other.discussion, discussion) ||
                other.discussion == discussion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discussion);

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailDiscussionSuccessImplCopyWith<_$DetailDiscussionSuccessImpl>
      get copyWith => __$$DetailDiscussionSuccessImplCopyWithImpl<
          _$DetailDiscussionSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ShowDiscussionsResponseModel discussion)
        detailDiscussionSuccess,
    required TResult Function(String message) error,
  }) {
    return detailDiscussionSuccess(discussion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult? Function(String message)? error,
  }) {
    return detailDiscussionSuccess?.call(discussion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (detailDiscussionSuccess != null) {
      return detailDiscussionSuccess(discussion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_DetailDiscussionSuccess value)
        detailDiscussionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return detailDiscussionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return detailDiscussionSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (detailDiscussionSuccess != null) {
      return detailDiscussionSuccess(this);
    }
    return orElse();
  }
}

abstract class _DetailDiscussionSuccess implements DetailDiscussionsState {
  const factory _DetailDiscussionSuccess(
          final ShowDiscussionsResponseModel discussion) =
      _$DetailDiscussionSuccessImpl;

  ShowDiscussionsResponseModel get discussion;

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailDiscussionSuccessImplCopyWith<_$DetailDiscussionSuccessImpl>
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
    extends _$DetailDiscussionsStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailDiscussionsState
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
    return 'DetailDiscussionsState.error(message: $message)';
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

  /// Create a copy of DetailDiscussionsState
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
    required TResult Function(ShowDiscussionsResponseModel discussion)
        detailDiscussionSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ShowDiscussionsResponseModel discussion)?
        detailDiscussionSuccess,
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
    required TResult Function(_DetailDiscussionSuccess value)
        detailDiscussionSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_DetailDiscussionSuccess value)? detailDiscussionSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DetailDiscussionsState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of DetailDiscussionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
