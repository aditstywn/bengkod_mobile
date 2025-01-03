// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_assignment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailAssignmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass, int idAssignment)
        getDetailAssignment,
    required TResult Function(String url) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult? Function(String url)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult Function(String url)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailAssignment value) getDetailAssignment,
    required TResult Function(_DownloadFile value) downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAssignmentEventCopyWith<$Res> {
  factory $DetailAssignmentEventCopyWith(DetailAssignmentEvent value,
          $Res Function(DetailAssignmentEvent) then) =
      _$DetailAssignmentEventCopyWithImpl<$Res, DetailAssignmentEvent>;
}

/// @nodoc
class _$DetailAssignmentEventCopyWithImpl<$Res,
        $Val extends DetailAssignmentEvent>
    implements $DetailAssignmentEventCopyWith<$Res> {
  _$DetailAssignmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailAssignmentEvent
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
    extends _$DetailAssignmentEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'DetailAssignmentEvent.started()';
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
    required TResult Function(int idClass, int idAssignment)
        getDetailAssignment,
    required TResult Function(String url) downloadFile,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult? Function(String url)? downloadFile,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult Function(String url)? downloadFile,
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
    required TResult Function(_GetDetailAssignment value) getDetailAssignment,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailAssignmentEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetDetailAssignmentImplCopyWith<$Res> {
  factory _$$GetDetailAssignmentImplCopyWith(_$GetDetailAssignmentImpl value,
          $Res Function(_$GetDetailAssignmentImpl) then) =
      __$$GetDetailAssignmentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idClass, int idAssignment});
}

/// @nodoc
class __$$GetDetailAssignmentImplCopyWithImpl<$Res>
    extends _$DetailAssignmentEventCopyWithImpl<$Res, _$GetDetailAssignmentImpl>
    implements _$$GetDetailAssignmentImplCopyWith<$Res> {
  __$$GetDetailAssignmentImplCopyWithImpl(_$GetDetailAssignmentImpl _value,
      $Res Function(_$GetDetailAssignmentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idClass = null,
    Object? idAssignment = null,
  }) {
    return _then(_$GetDetailAssignmentImpl(
      null == idClass
          ? _value.idClass
          : idClass // ignore: cast_nullable_to_non_nullable
              as int,
      null == idAssignment
          ? _value.idAssignment
          : idAssignment // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDetailAssignmentImpl implements _GetDetailAssignment {
  const _$GetDetailAssignmentImpl(this.idClass, this.idAssignment);

  @override
  final int idClass;
  @override
  final int idAssignment;

  @override
  String toString() {
    return 'DetailAssignmentEvent.getDetailAssignment(idClass: $idClass, idAssignment: $idAssignment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDetailAssignmentImpl &&
            (identical(other.idClass, idClass) || other.idClass == idClass) &&
            (identical(other.idAssignment, idAssignment) ||
                other.idAssignment == idAssignment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idClass, idAssignment);

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDetailAssignmentImplCopyWith<_$GetDetailAssignmentImpl> get copyWith =>
      __$$GetDetailAssignmentImplCopyWithImpl<_$GetDetailAssignmentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass, int idAssignment)
        getDetailAssignment,
    required TResult Function(String url) downloadFile,
  }) {
    return getDetailAssignment(idClass, idAssignment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult? Function(String url)? downloadFile,
  }) {
    return getDetailAssignment?.call(idClass, idAssignment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult Function(String url)? downloadFile,
    required TResult orElse(),
  }) {
    if (getDetailAssignment != null) {
      return getDetailAssignment(idClass, idAssignment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailAssignment value) getDetailAssignment,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return getDetailAssignment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return getDetailAssignment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (getDetailAssignment != null) {
      return getDetailAssignment(this);
    }
    return orElse();
  }
}

abstract class _GetDetailAssignment implements DetailAssignmentEvent {
  const factory _GetDetailAssignment(
      final int idClass, final int idAssignment) = _$GetDetailAssignmentImpl;

  int get idClass;
  int get idAssignment;

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDetailAssignmentImplCopyWith<_$GetDetailAssignmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadFileImplCopyWith<$Res> {
  factory _$$DownloadFileImplCopyWith(
          _$DownloadFileImpl value, $Res Function(_$DownloadFileImpl) then) =
      __$$DownloadFileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url});
}

/// @nodoc
class __$$DownloadFileImplCopyWithImpl<$Res>
    extends _$DetailAssignmentEventCopyWithImpl<$Res, _$DownloadFileImpl>
    implements _$$DownloadFileImplCopyWith<$Res> {
  __$$DownloadFileImplCopyWithImpl(
      _$DownloadFileImpl _value, $Res Function(_$DownloadFileImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$DownloadFileImpl(
      null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadFileImpl implements _DownloadFile {
  const _$DownloadFileImpl(this.url);

  @override
  final String url;

  @override
  String toString() {
    return 'DetailAssignmentEvent.downloadFile(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFileImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      __$$DownloadFileImplCopyWithImpl<_$DownloadFileImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idClass, int idAssignment)
        getDetailAssignment,
    required TResult Function(String url) downloadFile,
  }) {
    return downloadFile(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult? Function(String url)? downloadFile,
  }) {
    return downloadFile?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idClass, int idAssignment)? getDetailAssignment,
    TResult Function(String url)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetDetailAssignment value) getDetailAssignment,
    required TResult Function(_DownloadFile value) downloadFile,
  }) {
    return downloadFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult? Function(_DownloadFile value)? downloadFile,
  }) {
    return downloadFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetDetailAssignment value)? getDetailAssignment,
    TResult Function(_DownloadFile value)? downloadFile,
    required TResult orElse(),
  }) {
    if (downloadFile != null) {
      return downloadFile(this);
    }
    return orElse();
  }
}

abstract class _DownloadFile implements DetailAssignmentEvent {
  const factory _DownloadFile(final String url) = _$DownloadFileImpl;

  String get url;

  /// Create a copy of DetailAssignmentEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadFileImplCopyWith<_$DownloadFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailAssignmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailAssignmentStateCopyWith<$Res> {
  factory $DetailAssignmentStateCopyWith(DetailAssignmentState value,
          $Res Function(DetailAssignmentState) then) =
      _$DetailAssignmentStateCopyWithImpl<$Res, DetailAssignmentState>;
}

/// @nodoc
class _$DetailAssignmentStateCopyWithImpl<$Res,
        $Val extends DetailAssignmentState>
    implements $DetailAssignmentStateCopyWith<$Res> {
  _$DetailAssignmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailAssignmentState
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
    extends _$DetailAssignmentStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DetailAssignmentState.initial()';
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
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
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DetailAssignmentState {
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
    extends _$DetailAssignmentStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'DetailAssignmentState.loading()';
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
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
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements DetailAssignmentState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$getDetailAssignmentSuccessImplCopyWith<$Res> {
  factory _$$getDetailAssignmentSuccessImplCopyWith(
          _$getDetailAssignmentSuccessImpl value,
          $Res Function(_$getDetailAssignmentSuccessImpl) then) =
      __$$getDetailAssignmentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DetailAssignmentResponseModel detailAssignmentResponseModel});
}

/// @nodoc
class __$$getDetailAssignmentSuccessImplCopyWithImpl<$Res>
    extends _$DetailAssignmentStateCopyWithImpl<$Res,
        _$getDetailAssignmentSuccessImpl>
    implements _$$getDetailAssignmentSuccessImplCopyWith<$Res> {
  __$$getDetailAssignmentSuccessImplCopyWithImpl(
      _$getDetailAssignmentSuccessImpl _value,
      $Res Function(_$getDetailAssignmentSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailAssignmentResponseModel = null,
  }) {
    return _then(_$getDetailAssignmentSuccessImpl(
      null == detailAssignmentResponseModel
          ? _value.detailAssignmentResponseModel
          : detailAssignmentResponseModel // ignore: cast_nullable_to_non_nullable
              as DetailAssignmentResponseModel,
    ));
  }
}

/// @nodoc

class _$getDetailAssignmentSuccessImpl implements _getDetailAssignmentSuccess {
  const _$getDetailAssignmentSuccessImpl(this.detailAssignmentResponseModel);

  @override
  final DetailAssignmentResponseModel detailAssignmentResponseModel;

  @override
  String toString() {
    return 'DetailAssignmentState.getDetailAssignmentSuccess(detailAssignmentResponseModel: $detailAssignmentResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getDetailAssignmentSuccessImpl &&
            (identical(other.detailAssignmentResponseModel,
                    detailAssignmentResponseModel) ||
                other.detailAssignmentResponseModel ==
                    detailAssignmentResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailAssignmentResponseModel);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getDetailAssignmentSuccessImplCopyWith<_$getDetailAssignmentSuccessImpl>
      get copyWith => __$$getDetailAssignmentSuccessImplCopyWithImpl<
          _$getDetailAssignmentSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
    required TResult Function(String message) error,
  }) {
    return getDetailAssignmentSuccess(detailAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
    TResult? Function(String message)? error,
  }) {
    return getDetailAssignmentSuccess?.call(detailAssignmentResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (getDetailAssignmentSuccess != null) {
      return getDetailAssignmentSuccess(detailAssignmentResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) {
    return getDetailAssignmentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return getDetailAssignmentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getDetailAssignmentSuccess != null) {
      return getDetailAssignmentSuccess(this);
    }
    return orElse();
  }
}

abstract class _getDetailAssignmentSuccess implements DetailAssignmentState {
  const factory _getDetailAssignmentSuccess(
          final DetailAssignmentResponseModel detailAssignmentResponseModel) =
      _$getDetailAssignmentSuccessImpl;

  DetailAssignmentResponseModel get detailAssignmentResponseModel;

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getDetailAssignmentSuccessImplCopyWith<_$getDetailAssignmentSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadFileSuccessImplCopyWith<$Res> {
  factory _$$DownloadFileSuccessImplCopyWith(_$DownloadFileSuccessImpl value,
          $Res Function(_$DownloadFileSuccessImpl) then) =
      __$$DownloadFileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DownloadFileSuccessImplCopyWithImpl<$Res>
    extends _$DetailAssignmentStateCopyWithImpl<$Res, _$DownloadFileSuccessImpl>
    implements _$$DownloadFileSuccessImplCopyWith<$Res> {
  __$$DownloadFileSuccessImplCopyWithImpl(_$DownloadFileSuccessImpl _value,
      $Res Function(_$DownloadFileSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DownloadFileSuccessImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadFileSuccessImpl implements _DownloadFileSuccess {
  const _$DownloadFileSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'DetailAssignmentState.downloadFileSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFileSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFileSuccessImplCopyWith<_$DownloadFileSuccessImpl> get copyWith =>
      __$$DownloadFileSuccessImplCopyWithImpl<_$DownloadFileSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
    required TResult Function(String message) error,
  }) {
    return downloadFileSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
    TResult? Function(String message)? error,
  }) {
    return downloadFileSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (downloadFileSuccess != null) {
      return downloadFileSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) {
    return downloadFileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return downloadFileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (downloadFileSuccess != null) {
      return downloadFileSuccess(this);
    }
    return orElse();
  }
}

abstract class _DownloadFileSuccess implements DetailAssignmentState {
  const factory _DownloadFileSuccess(final String message) =
      _$DownloadFileSuccessImpl;

  String get message;

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadFileSuccessImplCopyWith<_$DownloadFileSuccessImpl> get copyWith =>
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
    extends _$DetailAssignmentStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailAssignmentState
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
    return 'DetailAssignmentState.error(message: $message)';
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

  /// Create a copy of DetailAssignmentState
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)
        getDetailAssignmentSuccess,
    required TResult Function(String message) downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult? Function(String message)? downloadFileSuccess,
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
            DetailAssignmentResponseModel detailAssignmentResponseModel)?
        getDetailAssignmentSuccess,
    TResult Function(String message)? downloadFileSuccess,
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
    required TResult Function(_getDetailAssignmentSuccess value)
        getDetailAssignmentSuccess,
    required TResult Function(_DownloadFileSuccess value) downloadFileSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult? Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_getDetailAssignmentSuccess value)?
        getDetailAssignmentSuccess,
    TResult Function(_DownloadFileSuccess value)? downloadFileSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements DetailAssignmentState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of DetailAssignmentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
