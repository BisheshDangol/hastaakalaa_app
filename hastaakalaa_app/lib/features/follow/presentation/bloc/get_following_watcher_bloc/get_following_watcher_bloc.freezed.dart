// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_following_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetFollowingWatcherStateTearOff {
  const _$GetFollowingWatcherStateTearOff();

  _GetFollowingWatcherState call(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      List<FollowEntity>? followingList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess}) {
    return _GetFollowingWatcherState(
      isLoading: isLoading,
      id: id,
      showErrors: showErrors,
      followingList: followingList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $GetFollowingWatcherState = _$GetFollowingWatcherStateTearOff();

/// @nodoc
mixin _$GetFollowingWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  List<FollowEntity>? get followingList => throw _privateConstructorUsedError;
  Either<Failure, List<FollowEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetFollowingWatcherStateCopyWith<GetFollowingWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFollowingWatcherStateCopyWith<$Res> {
  factory $GetFollowingWatcherStateCopyWith(GetFollowingWatcherState value,
          $Res Function(GetFollowingWatcherState) then) =
      _$GetFollowingWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followingList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class _$GetFollowingWatcherStateCopyWithImpl<$Res>
    implements $GetFollowingWatcherStateCopyWith<$Res> {
  _$GetFollowingWatcherStateCopyWithImpl(this._value, this._then);

  final GetFollowingWatcherState _value;
  // ignore: unused_field
  final $Res Function(GetFollowingWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followingList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      followingList: followingList == freezed
          ? _value.followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<FollowEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$GetFollowingWatcherStateCopyWith<$Res>
    implements $GetFollowingWatcherStateCopyWith<$Res> {
  factory _$GetFollowingWatcherStateCopyWith(_GetFollowingWatcherState value,
          $Res Function(_GetFollowingWatcherState) then) =
      __$GetFollowingWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followingList,
      Either<Failure, List<FollowEntity>>? failureOrSuccess});
}

/// @nodoc
class __$GetFollowingWatcherStateCopyWithImpl<$Res>
    extends _$GetFollowingWatcherStateCopyWithImpl<$Res>
    implements _$GetFollowingWatcherStateCopyWith<$Res> {
  __$GetFollowingWatcherStateCopyWithImpl(_GetFollowingWatcherState _value,
      $Res Function(_GetFollowingWatcherState) _then)
      : super(_value, (v) => _then(v as _GetFollowingWatcherState));

  @override
  _GetFollowingWatcherState get _value =>
      super._value as _GetFollowingWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followingList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_GetFollowingWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      followingList: followingList == freezed
          ? _value.followingList
          : followingList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<FollowEntity>>?,
    ));
  }
}

/// @nodoc

class _$_GetFollowingWatcherState implements _GetFollowingWatcherState {
  const _$_GetFollowingWatcherState(
      {required this.isLoading,
      this.id,
      required this.showErrors,
      this.followingList,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final int? id;
  @override
  final bool showErrors;
  @override
  final List<FollowEntity>? followingList;
  @override
  final Either<Failure, List<FollowEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'GetFollowingWatcherState(isLoading: $isLoading, id: $id, showErrors: $showErrors, followingList: $followingList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetFollowingWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.followingList, followingList) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(followingList),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$GetFollowingWatcherStateCopyWith<_GetFollowingWatcherState> get copyWith =>
      __$GetFollowingWatcherStateCopyWithImpl<_GetFollowingWatcherState>(
          this, _$identity);
}

abstract class _GetFollowingWatcherState implements GetFollowingWatcherState {
  const factory _GetFollowingWatcherState(
          {required bool isLoading,
          int? id,
          required bool showErrors,
          List<FollowEntity>? followingList,
          Either<Failure, List<FollowEntity>>? failureOrSuccess}) =
      _$_GetFollowingWatcherState;

  @override
  bool get isLoading;
  @override
  int? get id;
  @override
  bool get showErrors;
  @override
  List<FollowEntity>? get followingList;
  @override
  Either<Failure, List<FollowEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$GetFollowingWatcherStateCopyWith<_GetFollowingWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
