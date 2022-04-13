// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CommentWatcherEventTearOff {
  const _$CommentWatcherEventTearOff();

  _RetrieveCommentList retrieveCommentList({required int id}) {
    return _RetrieveCommentList(
      id: id,
    );
  }
}

/// @nodoc
const $CommentWatcherEvent = _$CommentWatcherEventTearOff();

/// @nodoc
mixin _$CommentWatcherEvent {
  int get id => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) retrieveCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? retrieveCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? retrieveCommentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentList value) retrieveCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveCommentList value)? retrieveCommentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentList value)? retrieveCommentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentWatcherEventCopyWith<CommentWatcherEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentWatcherEventCopyWith<$Res> {
  factory $CommentWatcherEventCopyWith(
          CommentWatcherEvent value, $Res Function(CommentWatcherEvent) then) =
      _$CommentWatcherEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$CommentWatcherEventCopyWithImpl<$Res>
    implements $CommentWatcherEventCopyWith<$Res> {
  _$CommentWatcherEventCopyWithImpl(this._value, this._then);

  final CommentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RetrieveCommentListCopyWith<$Res>
    implements $CommentWatcherEventCopyWith<$Res> {
  factory _$RetrieveCommentListCopyWith(_RetrieveCommentList value,
          $Res Function(_RetrieveCommentList) then) =
      __$RetrieveCommentListCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$RetrieveCommentListCopyWithImpl<$Res>
    extends _$CommentWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveCommentListCopyWith<$Res> {
  __$RetrieveCommentListCopyWithImpl(
      _RetrieveCommentList _value, $Res Function(_RetrieveCommentList) _then)
      : super(_value, (v) => _then(v as _RetrieveCommentList));

  @override
  _RetrieveCommentList get _value => super._value as _RetrieveCommentList;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_RetrieveCommentList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RetrieveCommentList implements _RetrieveCommentList {
  const _$_RetrieveCommentList({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'CommentWatcherEvent.retrieveCommentList(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetrieveCommentList &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$RetrieveCommentListCopyWith<_RetrieveCommentList> get copyWith =>
      __$RetrieveCommentListCopyWithImpl<_RetrieveCommentList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) retrieveCommentList,
  }) {
    return retrieveCommentList(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? retrieveCommentList,
  }) {
    return retrieveCommentList?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? retrieveCommentList,
    required TResult orElse(),
  }) {
    if (retrieveCommentList != null) {
      return retrieveCommentList(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveCommentList value) retrieveCommentList,
  }) {
    return retrieveCommentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveCommentList value)? retrieveCommentList,
  }) {
    return retrieveCommentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveCommentList value)? retrieveCommentList,
    required TResult orElse(),
  }) {
    if (retrieveCommentList != null) {
      return retrieveCommentList(this);
    }
    return orElse();
  }
}

abstract class _RetrieveCommentList implements CommentWatcherEvent {
  const factory _RetrieveCommentList({required int id}) =
      _$_RetrieveCommentList;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$RetrieveCommentListCopyWith<_RetrieveCommentList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CommentWatcherStateTearOff {
  const _$CommentWatcherStateTearOff();

  _CommentWatcherState call(
      {required bool isLoading,
      List<CommentEntity>? commentList,
      Either<Failure, List<CommentEntity>>? failureOrSuccess}) {
    return _CommentWatcherState(
      isLoading: isLoading,
      commentList: commentList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $CommentWatcherState = _$CommentWatcherStateTearOff();

/// @nodoc
mixin _$CommentWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<CommentEntity>? get commentList => throw _privateConstructorUsedError;
  Either<Failure, List<CommentEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentWatcherStateCopyWith<CommentWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentWatcherStateCopyWith<$Res> {
  factory $CommentWatcherStateCopyWith(
          CommentWatcherState value, $Res Function(CommentWatcherState) then) =
      _$CommentWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<CommentEntity>? commentList,
      Either<Failure, List<CommentEntity>>? failureOrSuccess});
}

/// @nodoc
class _$CommentWatcherStateCopyWithImpl<$Res>
    implements $CommentWatcherStateCopyWith<$Res> {
  _$CommentWatcherStateCopyWithImpl(this._value, this._then);

  final CommentWatcherState _value;
  // ignore: unused_field
  final $Res Function(CommentWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? commentList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<CommentEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$CommentWatcherStateCopyWith<$Res>
    implements $CommentWatcherStateCopyWith<$Res> {
  factory _$CommentWatcherStateCopyWith(_CommentWatcherState value,
          $Res Function(_CommentWatcherState) then) =
      __$CommentWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<CommentEntity>? commentList,
      Either<Failure, List<CommentEntity>>? failureOrSuccess});
}

/// @nodoc
class __$CommentWatcherStateCopyWithImpl<$Res>
    extends _$CommentWatcherStateCopyWithImpl<$Res>
    implements _$CommentWatcherStateCopyWith<$Res> {
  __$CommentWatcherStateCopyWithImpl(
      _CommentWatcherState _value, $Res Function(_CommentWatcherState) _then)
      : super(_value, (v) => _then(v as _CommentWatcherState));

  @override
  _CommentWatcherState get _value => super._value as _CommentWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? commentList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_CommentWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      commentList: commentList == freezed
          ? _value.commentList
          : commentList // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<CommentEntity>>?,
    ));
  }
}

/// @nodoc

class _$_CommentWatcherState implements _CommentWatcherState {
  const _$_CommentWatcherState(
      {required this.isLoading, this.commentList, this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final List<CommentEntity>? commentList;
  @override
  final Either<Failure, List<CommentEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'CommentWatcherState(isLoading: $isLoading, commentList: $commentList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CommentWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.commentList, commentList) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(commentList),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$CommentWatcherStateCopyWith<_CommentWatcherState> get copyWith =>
      __$CommentWatcherStateCopyWithImpl<_CommentWatcherState>(
          this, _$identity);
}

abstract class _CommentWatcherState implements CommentWatcherState {
  const factory _CommentWatcherState(
          {required bool isLoading,
          List<CommentEntity>? commentList,
          Either<Failure, List<CommentEntity>>? failureOrSuccess}) =
      _$_CommentWatcherState;

  @override
  bool get isLoading;
  @override
  List<CommentEntity>? get commentList;
  @override
  Either<Failure, List<CommentEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$CommentWatcherStateCopyWith<_CommentWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
