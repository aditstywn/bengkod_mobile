// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reply_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReplyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyEventCopyWith<$Res> {
  factory $ReplyEventCopyWith(
          ReplyEvent value, $Res Function(ReplyEvent) then) =
      _$ReplyEventCopyWithImpl<$Res, ReplyEvent>;
}

/// @nodoc
class _$ReplyEventCopyWithImpl<$Res, $Val extends ReplyEvent>
    implements $ReplyEventCopyWith<$Res> {
  _$ReplyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyEvent
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
    extends _$ReplyEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ReplyEvent.started()';
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
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
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
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReplyEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AllReplyImplCopyWith<$Res> {
  factory _$$AllReplyImplCopyWith(
          _$AllReplyImpl value, $Res Function(_$AllReplyImpl) then) =
      __$$AllReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussion, int? page});
}

/// @nodoc
class __$$AllReplyImplCopyWithImpl<$Res>
    extends _$ReplyEventCopyWithImpl<$Res, _$AllReplyImpl>
    implements _$$AllReplyImplCopyWith<$Res> {
  __$$AllReplyImplCopyWithImpl(
      _$AllReplyImpl _value, $Res Function(_$AllReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussion = null,
    Object? page = freezed,
  }) {
    return _then(_$AllReplyImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussion
          ? _value.idDiscussion
          : idDiscussion // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AllReplyImpl implements _AllReply {
  const _$AllReplyImpl(this.idCourse, this.idDiscussion, this.page);

  @override
  final int idCourse;
  @override
  final int idDiscussion;
  @override
  final int? page;

  @override
  String toString() {
    return 'ReplyEvent.allReply(idCourse: $idCourse, idDiscussion: $idDiscussion, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllReplyImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussion, idDiscussion) ||
                other.idDiscussion == idDiscussion) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, idDiscussion, page);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllReplyImplCopyWith<_$AllReplyImpl> get copyWith =>
      __$$AllReplyImplCopyWithImpl<_$AllReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) {
    return allReply(idCourse, idDiscussion, page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) {
    return allReply?.call(idCourse, idDiscussion, page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
    required TResult orElse(),
  }) {
    if (allReply != null) {
      return allReply(idCourse, idDiscussion, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) {
    return allReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) {
    return allReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) {
    if (allReply != null) {
      return allReply(this);
    }
    return orElse();
  }
}

abstract class _AllReply implements ReplyEvent {
  const factory _AllReply(
          final int idCourse, final int idDiscussion, final int? page) =
      _$AllReplyImpl;

  int get idCourse;
  int get idDiscussion;
  int? get page;

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllReplyImplCopyWith<_$AllReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReplyImplCopyWith<$Res> {
  factory _$$AddReplyImplCopyWith(
          _$AddReplyImpl value, $Res Function(_$AddReplyImpl) then) =
      __$$AddReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussion, AddReplyRequestModel reply});
}

/// @nodoc
class __$$AddReplyImplCopyWithImpl<$Res>
    extends _$ReplyEventCopyWithImpl<$Res, _$AddReplyImpl>
    implements _$$AddReplyImplCopyWith<$Res> {
  __$$AddReplyImplCopyWithImpl(
      _$AddReplyImpl _value, $Res Function(_$AddReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussion = null,
    Object? reply = null,
  }) {
    return _then(_$AddReplyImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussion
          ? _value.idDiscussion
          : idDiscussion // ignore: cast_nullable_to_non_nullable
              as int,
      null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as AddReplyRequestModel,
    ));
  }
}

/// @nodoc

class _$AddReplyImpl implements _AddReply {
  const _$AddReplyImpl(this.idCourse, this.idDiscussion, this.reply);

  @override
  final int idCourse;
  @override
  final int idDiscussion;
  @override
  final AddReplyRequestModel reply;

  @override
  String toString() {
    return 'ReplyEvent.addReply(idCourse: $idCourse, idDiscussion: $idDiscussion, reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReplyImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussion, idDiscussion) ||
                other.idDiscussion == idDiscussion) &&
            (identical(other.reply, reply) || other.reply == reply));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, idDiscussion, reply);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReplyImplCopyWith<_$AddReplyImpl> get copyWith =>
      __$$AddReplyImplCopyWithImpl<_$AddReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) {
    return addReply(idCourse, idDiscussion, reply);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) {
    return addReply?.call(idCourse, idDiscussion, reply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
    required TResult orElse(),
  }) {
    if (addReply != null) {
      return addReply(idCourse, idDiscussion, reply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) {
    return addReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) {
    return addReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) {
    if (addReply != null) {
      return addReply(this);
    }
    return orElse();
  }
}

abstract class _AddReply implements ReplyEvent {
  const factory _AddReply(final int idCourse, final int idDiscussion,
      final AddReplyRequestModel reply) = _$AddReplyImpl;

  int get idCourse;
  int get idDiscussion;
  AddReplyRequestModel get reply;

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReplyImplCopyWith<_$AddReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReplyImplCopyWith<$Res> {
  factory _$$UpdateReplyImplCopyWith(
          _$UpdateReplyImpl value, $Res Function(_$UpdateReplyImpl) then) =
      __$$UpdateReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussion, int idReply, String comment});
}

/// @nodoc
class __$$UpdateReplyImplCopyWithImpl<$Res>
    extends _$ReplyEventCopyWithImpl<$Res, _$UpdateReplyImpl>
    implements _$$UpdateReplyImplCopyWith<$Res> {
  __$$UpdateReplyImplCopyWithImpl(
      _$UpdateReplyImpl _value, $Res Function(_$UpdateReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussion = null,
    Object? idReply = null,
    Object? comment = null,
  }) {
    return _then(_$UpdateReplyImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussion
          ? _value.idDiscussion
          : idDiscussion // ignore: cast_nullable_to_non_nullable
              as int,
      null == idReply
          ? _value.idReply
          : idReply // ignore: cast_nullable_to_non_nullable
              as int,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateReplyImpl implements _UpdateReply {
  const _$UpdateReplyImpl(
      this.idCourse, this.idDiscussion, this.idReply, this.comment);

  @override
  final int idCourse;
  @override
  final int idDiscussion;
  @override
  final int idReply;
  @override
  final String comment;

  @override
  String toString() {
    return 'ReplyEvent.updateReply(idCourse: $idCourse, idDiscussion: $idDiscussion, idReply: $idReply, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReplyImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussion, idDiscussion) ||
                other.idDiscussion == idDiscussion) &&
            (identical(other.idReply, idReply) || other.idReply == idReply) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, idCourse, idDiscussion, idReply, comment);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReplyImplCopyWith<_$UpdateReplyImpl> get copyWith =>
      __$$UpdateReplyImplCopyWithImpl<_$UpdateReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) {
    return updateReply(idCourse, idDiscussion, idReply, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) {
    return updateReply?.call(idCourse, idDiscussion, idReply, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
    required TResult orElse(),
  }) {
    if (updateReply != null) {
      return updateReply(idCourse, idDiscussion, idReply, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) {
    return updateReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) {
    return updateReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) {
    if (updateReply != null) {
      return updateReply(this);
    }
    return orElse();
  }
}

abstract class _UpdateReply implements ReplyEvent {
  const factory _UpdateReply(final int idCourse, final int idDiscussion,
      final int idReply, final String comment) = _$UpdateReplyImpl;

  int get idCourse;
  int get idDiscussion;
  int get idReply;
  String get comment;

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReplyImplCopyWith<_$UpdateReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteReplyImplCopyWith<$Res> {
  factory _$$DeleteReplyImplCopyWith(
          _$DeleteReplyImpl value, $Res Function(_$DeleteReplyImpl) then) =
      __$$DeleteReplyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int idCourse, int idDiscussion, int idReply});
}

/// @nodoc
class __$$DeleteReplyImplCopyWithImpl<$Res>
    extends _$ReplyEventCopyWithImpl<$Res, _$DeleteReplyImpl>
    implements _$$DeleteReplyImplCopyWith<$Res> {
  __$$DeleteReplyImplCopyWithImpl(
      _$DeleteReplyImpl _value, $Res Function(_$DeleteReplyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idCourse = null,
    Object? idDiscussion = null,
    Object? idReply = null,
  }) {
    return _then(_$DeleteReplyImpl(
      null == idCourse
          ? _value.idCourse
          : idCourse // ignore: cast_nullable_to_non_nullable
              as int,
      null == idDiscussion
          ? _value.idDiscussion
          : idDiscussion // ignore: cast_nullable_to_non_nullable
              as int,
      null == idReply
          ? _value.idReply
          : idReply // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteReplyImpl implements _DeleteReply {
  const _$DeleteReplyImpl(this.idCourse, this.idDiscussion, this.idReply);

  @override
  final int idCourse;
  @override
  final int idDiscussion;
  @override
  final int idReply;

  @override
  String toString() {
    return 'ReplyEvent.deleteReply(idCourse: $idCourse, idDiscussion: $idDiscussion, idReply: $idReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReplyImpl &&
            (identical(other.idCourse, idCourse) ||
                other.idCourse == idCourse) &&
            (identical(other.idDiscussion, idDiscussion) ||
                other.idDiscussion == idDiscussion) &&
            (identical(other.idReply, idReply) || other.idReply == idReply));
  }

  @override
  int get hashCode => Object.hash(runtimeType, idCourse, idDiscussion, idReply);

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReplyImplCopyWith<_$DeleteReplyImpl> get copyWith =>
      __$$DeleteReplyImplCopyWithImpl<_$DeleteReplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int idCourse, int idDiscussion, int? page)
        allReply,
    required TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)
        addReply,
    required TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)
        updateReply,
    required TResult Function(int idCourse, int idDiscussion, int idReply)
        deleteReply,
  }) {
    return deleteReply(idCourse, idDiscussion, idReply);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult? Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult? Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult? Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
  }) {
    return deleteReply?.call(idCourse, idDiscussion, idReply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int idCourse, int idDiscussion, int? page)? allReply,
    TResult Function(
            int idCourse, int idDiscussion, AddReplyRequestModel reply)?
        addReply,
    TResult Function(
            int idCourse, int idDiscussion, int idReply, String comment)?
        updateReply,
    TResult Function(int idCourse, int idDiscussion, int idReply)? deleteReply,
    required TResult orElse(),
  }) {
    if (deleteReply != null) {
      return deleteReply(idCourse, idDiscussion, idReply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AllReply value) allReply,
    required TResult Function(_AddReply value) addReply,
    required TResult Function(_UpdateReply value) updateReply,
    required TResult Function(_DeleteReply value) deleteReply,
  }) {
    return deleteReply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AllReply value)? allReply,
    TResult? Function(_AddReply value)? addReply,
    TResult? Function(_UpdateReply value)? updateReply,
    TResult? Function(_DeleteReply value)? deleteReply,
  }) {
    return deleteReply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AllReply value)? allReply,
    TResult Function(_AddReply value)? addReply,
    TResult Function(_UpdateReply value)? updateReply,
    TResult Function(_DeleteReply value)? deleteReply,
    required TResult orElse(),
  }) {
    if (deleteReply != null) {
      return deleteReply(this);
    }
    return orElse();
  }
}

abstract class _DeleteReply implements ReplyEvent {
  const factory _DeleteReply(
          final int idCourse, final int idDiscussion, final int idReply) =
      _$DeleteReplyImpl;

  int get idCourse;
  int get idDiscussion;
  int get idReply;

  /// Create a copy of ReplyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteReplyImplCopyWith<_$DeleteReplyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReplyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyStateCopyWith<$Res> {
  factory $ReplyStateCopyWith(
          ReplyState value, $Res Function(ReplyState) then) =
      _$ReplyStateCopyWithImpl<$Res, ReplyState>;
}

/// @nodoc
class _$ReplyStateCopyWithImpl<$Res, $Val extends ReplyState>
    implements $ReplyStateCopyWith<$Res> {
  _$ReplyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReplyState
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
    extends _$ReplyStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ReplyState.initial()';
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
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
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
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ReplyState {
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
    extends _$ReplyStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ReplyState.loading()';
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
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
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
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ReplyState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AllReplySuccessImplCopyWith<$Res> {
  factory _$$AllReplySuccessImplCopyWith(_$AllReplySuccessImpl value,
          $Res Function(_$AllReplySuccessImpl) then) =
      __$$AllReplySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllReplyResponseModel allReply});
}

/// @nodoc
class __$$AllReplySuccessImplCopyWithImpl<$Res>
    extends _$ReplyStateCopyWithImpl<$Res, _$AllReplySuccessImpl>
    implements _$$AllReplySuccessImplCopyWith<$Res> {
  __$$AllReplySuccessImplCopyWithImpl(
      _$AllReplySuccessImpl _value, $Res Function(_$AllReplySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allReply = null,
  }) {
    return _then(_$AllReplySuccessImpl(
      null == allReply
          ? _value.allReply
          : allReply // ignore: cast_nullable_to_non_nullable
              as AllReplyResponseModel,
    ));
  }
}

/// @nodoc

class _$AllReplySuccessImpl implements _AllReplySuccess {
  const _$AllReplySuccessImpl(this.allReply);

  @override
  final AllReplyResponseModel allReply;

  @override
  String toString() {
    return 'ReplyState.allReplySuccess(allReply: $allReply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllReplySuccessImpl &&
            (identical(other.allReply, allReply) ||
                other.allReply == allReply));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allReply);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllReplySuccessImplCopyWith<_$AllReplySuccessImpl> get copyWith =>
      __$$AllReplySuccessImplCopyWithImpl<_$AllReplySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return allReplySuccess(allReply);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return allReplySuccess?.call(allReply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (allReplySuccess != null) {
      return allReplySuccess(allReply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return allReplySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return allReplySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (allReplySuccess != null) {
      return allReplySuccess(this);
    }
    return orElse();
  }
}

abstract class _AllReplySuccess implements ReplyState {
  const factory _AllReplySuccess(final AllReplyResponseModel allReply) =
      _$AllReplySuccessImpl;

  AllReplyResponseModel get allReply;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllReplySuccessImplCopyWith<_$AllReplySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReplySuccessImplCopyWith<$Res> {
  factory _$$AddReplySuccessImplCopyWith(_$AddReplySuccessImpl value,
          $Res Function(_$AddReplySuccessImpl) then) =
      __$$AddReplySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddReplyResponseModel reply});
}

/// @nodoc
class __$$AddReplySuccessImplCopyWithImpl<$Res>
    extends _$ReplyStateCopyWithImpl<$Res, _$AddReplySuccessImpl>
    implements _$$AddReplySuccessImplCopyWith<$Res> {
  __$$AddReplySuccessImplCopyWithImpl(
      _$AddReplySuccessImpl _value, $Res Function(_$AddReplySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reply = null,
  }) {
    return _then(_$AddReplySuccessImpl(
      null == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as AddReplyResponseModel,
    ));
  }
}

/// @nodoc

class _$AddReplySuccessImpl implements _AddReplySuccess {
  const _$AddReplySuccessImpl(this.reply);

  @override
  final AddReplyResponseModel reply;

  @override
  String toString() {
    return 'ReplyState.addReplySuccess(reply: $reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReplySuccessImpl &&
            (identical(other.reply, reply) || other.reply == reply));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reply);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReplySuccessImplCopyWith<_$AddReplySuccessImpl> get copyWith =>
      __$$AddReplySuccessImplCopyWithImpl<_$AddReplySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return addReplySuccess(reply);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return addReplySuccess?.call(reply);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (addReplySuccess != null) {
      return addReplySuccess(reply);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return addReplySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return addReplySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (addReplySuccess != null) {
      return addReplySuccess(this);
    }
    return orElse();
  }
}

abstract class _AddReplySuccess implements ReplyState {
  const factory _AddReplySuccess(final AddReplyResponseModel reply) =
      _$AddReplySuccessImpl;

  AddReplyResponseModel get reply;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddReplySuccessImplCopyWith<_$AddReplySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateReplySuccessImplCopyWith<$Res> {
  factory _$$UpdateReplySuccessImplCopyWith(_$UpdateReplySuccessImpl value,
          $Res Function(_$UpdateReplySuccessImpl) then) =
      __$$UpdateReplySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateReplyResponseModel update});
}

/// @nodoc
class __$$UpdateReplySuccessImplCopyWithImpl<$Res>
    extends _$ReplyStateCopyWithImpl<$Res, _$UpdateReplySuccessImpl>
    implements _$$UpdateReplySuccessImplCopyWith<$Res> {
  __$$UpdateReplySuccessImplCopyWithImpl(_$UpdateReplySuccessImpl _value,
      $Res Function(_$UpdateReplySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? update = null,
  }) {
    return _then(_$UpdateReplySuccessImpl(
      null == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as UpdateReplyResponseModel,
    ));
  }
}

/// @nodoc

class _$UpdateReplySuccessImpl implements _UpdateReplySuccess {
  const _$UpdateReplySuccessImpl(this.update);

  @override
  final UpdateReplyResponseModel update;

  @override
  String toString() {
    return 'ReplyState.updateReplySuccess(update: $update)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateReplySuccessImpl &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(runtimeType, update);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateReplySuccessImplCopyWith<_$UpdateReplySuccessImpl> get copyWith =>
      __$$UpdateReplySuccessImplCopyWithImpl<_$UpdateReplySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return updateReplySuccess(update);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return updateReplySuccess?.call(update);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updateReplySuccess != null) {
      return updateReplySuccess(update);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return updateReplySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return updateReplySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (updateReplySuccess != null) {
      return updateReplySuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateReplySuccess implements ReplyState {
  const factory _UpdateReplySuccess(final UpdateReplyResponseModel update) =
      _$UpdateReplySuccessImpl;

  UpdateReplyResponseModel get update;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateReplySuccessImplCopyWith<_$UpdateReplySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteReplySuccessImplCopyWith<$Res> {
  factory _$$DeleteReplySuccessImplCopyWith(_$DeleteReplySuccessImpl value,
          $Res Function(_$DeleteReplySuccessImpl) then) =
      __$$DeleteReplySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AllReplyResponseModel delet});
}

/// @nodoc
class __$$DeleteReplySuccessImplCopyWithImpl<$Res>
    extends _$ReplyStateCopyWithImpl<$Res, _$DeleteReplySuccessImpl>
    implements _$$DeleteReplySuccessImplCopyWith<$Res> {
  __$$DeleteReplySuccessImplCopyWithImpl(_$DeleteReplySuccessImpl _value,
      $Res Function(_$DeleteReplySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? delet = null,
  }) {
    return _then(_$DeleteReplySuccessImpl(
      null == delet
          ? _value.delet
          : delet // ignore: cast_nullable_to_non_nullable
              as AllReplyResponseModel,
    ));
  }
}

/// @nodoc

class _$DeleteReplySuccessImpl implements _DeleteReplySuccess {
  const _$DeleteReplySuccessImpl(this.delet);

  @override
  final AllReplyResponseModel delet;

  @override
  String toString() {
    return 'ReplyState.deleteReplySuccess(delet: $delet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteReplySuccessImpl &&
            (identical(other.delet, delet) || other.delet == delet));
  }

  @override
  int get hashCode => Object.hash(runtimeType, delet);

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteReplySuccessImplCopyWith<_$DeleteReplySuccessImpl> get copyWith =>
      __$$DeleteReplySuccessImplCopyWithImpl<_$DeleteReplySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return deleteReplySuccess(delet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return deleteReplySuccess?.call(delet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleteReplySuccess != null) {
      return deleteReplySuccess(delet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return deleteReplySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return deleteReplySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (deleteReplySuccess != null) {
      return deleteReplySuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteReplySuccess implements ReplyState {
  const factory _DeleteReplySuccess(final AllReplyResponseModel delet) =
      _$DeleteReplySuccessImpl;

  AllReplyResponseModel get delet;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteReplySuccessImplCopyWith<_$DeleteReplySuccessImpl> get copyWith =>
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
    extends _$ReplyStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReplyState
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
    return 'ReplyState.error(message: $message)';
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

  /// Create a copy of ReplyState
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
    required TResult Function(AllReplyResponseModel allReply) allReplySuccess,
    required TResult Function(AddReplyResponseModel reply) addReplySuccess,
    required TResult Function(UpdateReplyResponseModel update)
        updateReplySuccess,
    required TResult Function(AllReplyResponseModel delet) deleteReplySuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult? Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult? Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult? Function(AllReplyResponseModel delet)? deleteReplySuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AllReplyResponseModel allReply)? allReplySuccess,
    TResult Function(AddReplyResponseModel reply)? addReplySuccess,
    TResult Function(UpdateReplyResponseModel update)? updateReplySuccess,
    TResult Function(AllReplyResponseModel delet)? deleteReplySuccess,
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
    required TResult Function(_AllReplySuccess value) allReplySuccess,
    required TResult Function(_AddReplySuccess value) addReplySuccess,
    required TResult Function(_UpdateReplySuccess value) updateReplySuccess,
    required TResult Function(_DeleteReplySuccess value) deleteReplySuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_AllReplySuccess value)? allReplySuccess,
    TResult? Function(_AddReplySuccess value)? addReplySuccess,
    TResult? Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult? Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_AllReplySuccess value)? allReplySuccess,
    TResult Function(_AddReplySuccess value)? addReplySuccess,
    TResult Function(_UpdateReplySuccess value)? updateReplySuccess,
    TResult Function(_DeleteReplySuccess value)? deleteReplySuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ReplyState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ReplyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
