// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'google_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GoogleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String idToken) googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String idToken)? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleEventCopyWith<$Res> {
  factory $GoogleEventCopyWith(
          GoogleEvent value, $Res Function(GoogleEvent) then) =
      _$GoogleEventCopyWithImpl<$Res, GoogleEvent>;
}

/// @nodoc
class _$GoogleEventCopyWithImpl<$Res, $Val extends GoogleEvent>
    implements $GoogleEventCopyWith<$Res> {
  _$GoogleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleEvent
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
    extends _$GoogleEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'GoogleEvent.started()';
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
    required TResult Function(String idToken) googleSignIn,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String idToken)? googleSignIn,
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
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GoogleEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GoogleSignInImplCopyWith<$Res> {
  factory _$$GoogleSignInImplCopyWith(
          _$GoogleSignInImpl value, $Res Function(_$GoogleSignInImpl) then) =
      __$$GoogleSignInImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String idToken});
}

/// @nodoc
class __$$GoogleSignInImplCopyWithImpl<$Res>
    extends _$GoogleEventCopyWithImpl<$Res, _$GoogleSignInImpl>
    implements _$$GoogleSignInImplCopyWith<$Res> {
  __$$GoogleSignInImplCopyWithImpl(
      _$GoogleSignInImpl _value, $Res Function(_$GoogleSignInImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idToken = null,
  }) {
    return _then(_$GoogleSignInImpl(
      null == idToken
          ? _value.idToken
          : idToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GoogleSignInImpl implements _GoogleSignIn {
  const _$GoogleSignInImpl(this.idToken);

  @override
  final String idToken;

  @override
  String toString() {
    return 'GoogleEvent.googleSignIn(idToken: $idToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInImpl &&
            (identical(other.idToken, idToken) || other.idToken == idToken));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idToken);

  /// Create a copy of GoogleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSignInImplCopyWith<_$GoogleSignInImpl> get copyWith =>
      __$$GoogleSignInImplCopyWithImpl<_$GoogleSignInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String idToken) googleSignIn,
  }) {
    return googleSignIn(idToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String idToken)? googleSignIn,
  }) {
    return googleSignIn?.call(idToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String idToken)? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(idToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoogleSignIn value) googleSignIn,
  }) {
    return googleSignIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoogleSignIn value)? googleSignIn,
  }) {
    return googleSignIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoogleSignIn value)? googleSignIn,
    required TResult orElse(),
  }) {
    if (googleSignIn != null) {
      return googleSignIn(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignIn implements GoogleEvent {
  const factory _GoogleSignIn(final String idToken) = _$GoogleSignInImpl;

  String get idToken;

  /// Create a copy of GoogleEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSignInImplCopyWith<_$GoogleSignInImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GoogleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GoogleSignInResponseModel googleSignInResponseModel)
        googleSignInSucess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GoogleSignInSucess value) googleSignInSucess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleStateCopyWith<$Res> {
  factory $GoogleStateCopyWith(
          GoogleState value, $Res Function(GoogleState) then) =
      _$GoogleStateCopyWithImpl<$Res, GoogleState>;
}

/// @nodoc
class _$GoogleStateCopyWithImpl<$Res, $Val extends GoogleState>
    implements $GoogleStateCopyWith<$Res> {
  _$GoogleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleState
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
    extends _$GoogleStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'GoogleState.initial()';
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
            GoogleSignInResponseModel googleSignInResponseModel)
        googleSignInSucess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
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
    required TResult Function(_GoogleSignInSucess value) googleSignInSucess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GoogleState {
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
    extends _$GoogleStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'GoogleState.loading()';
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
            GoogleSignInResponseModel googleSignInResponseModel)
        googleSignInSucess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
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
    required TResult Function(_GoogleSignInSucess value) googleSignInSucess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GoogleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$GoogleSignInSucessImplCopyWith<$Res> {
  factory _$$GoogleSignInSucessImplCopyWith(_$GoogleSignInSucessImpl value,
          $Res Function(_$GoogleSignInSucessImpl) then) =
      __$$GoogleSignInSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GoogleSignInResponseModel googleSignInResponseModel});
}

/// @nodoc
class __$$GoogleSignInSucessImplCopyWithImpl<$Res>
    extends _$GoogleStateCopyWithImpl<$Res, _$GoogleSignInSucessImpl>
    implements _$$GoogleSignInSucessImplCopyWith<$Res> {
  __$$GoogleSignInSucessImplCopyWithImpl(_$GoogleSignInSucessImpl _value,
      $Res Function(_$GoogleSignInSucessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? googleSignInResponseModel = null,
  }) {
    return _then(_$GoogleSignInSucessImpl(
      null == googleSignInResponseModel
          ? _value.googleSignInResponseModel
          : googleSignInResponseModel // ignore: cast_nullable_to_non_nullable
              as GoogleSignInResponseModel,
    ));
  }
}

/// @nodoc

class _$GoogleSignInSucessImpl implements _GoogleSignInSucess {
  const _$GoogleSignInSucessImpl(this.googleSignInResponseModel);

  @override
  final GoogleSignInResponseModel googleSignInResponseModel;

  @override
  String toString() {
    return 'GoogleState.googleSignInSucess(googleSignInResponseModel: $googleSignInResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleSignInSucessImpl &&
            (identical(other.googleSignInResponseModel,
                    googleSignInResponseModel) ||
                other.googleSignInResponseModel == googleSignInResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, googleSignInResponseModel);

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleSignInSucessImplCopyWith<_$GoogleSignInSucessImpl> get copyWith =>
      __$$GoogleSignInSucessImplCopyWithImpl<_$GoogleSignInSucessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            GoogleSignInResponseModel googleSignInResponseModel)
        googleSignInSucess,
    required TResult Function(String message) error,
  }) {
    return googleSignInSucess(googleSignInResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult? Function(String message)? error,
  }) {
    return googleSignInSucess?.call(googleSignInResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (googleSignInSucess != null) {
      return googleSignInSucess(googleSignInResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_GoogleSignInSucess value) googleSignInSucess,
    required TResult Function(_Error value) error,
  }) {
    return googleSignInSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult? Function(_Error value)? error,
  }) {
    return googleSignInSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (googleSignInSucess != null) {
      return googleSignInSucess(this);
    }
    return orElse();
  }
}

abstract class _GoogleSignInSucess implements GoogleState {
  const factory _GoogleSignInSucess(
          final GoogleSignInResponseModel googleSignInResponseModel) =
      _$GoogleSignInSucessImpl;

  GoogleSignInResponseModel get googleSignInResponseModel;

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleSignInSucessImplCopyWith<_$GoogleSignInSucessImpl> get copyWith =>
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
    extends _$GoogleStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleState
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
    return 'GoogleState.error(message: $message)';
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

  /// Create a copy of GoogleState
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
            GoogleSignInResponseModel googleSignInResponseModel)
        googleSignInSucess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(GoogleSignInResponseModel googleSignInResponseModel)?
        googleSignInSucess,
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
    required TResult Function(_GoogleSignInSucess value) googleSignInSucess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_GoogleSignInSucess value)? googleSignInSucess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements GoogleState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of GoogleState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
