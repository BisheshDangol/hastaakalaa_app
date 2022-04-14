// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_user_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchUserWatcherStateTearOff {
  const _$SearchUserWatcherStateTearOff();

  _SearchUserWatcherState call(
      {required bool isLoading,
      required bool showErrors,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess}) {
    return _SearchUserWatcherState(
      isLoading: isLoading,
      showErrors: showErrors,
      keywordTitle: keywordTitle,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $SearchUserWatcherState = _$SearchUserWatcherStateTearOff();

/// @nodoc
mixin _$SearchUserWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, String> get keywordTitle =>
      throw _privateConstructorUsedError;
  Either<Failure, List<ArtEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchUserWatcherStateCopyWith<SearchUserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchUserWatcherStateCopyWith<$Res> {
  factory $SearchUserWatcherStateCopyWith(SearchUserWatcherState value,
          $Res Function(SearchUserWatcherState) then) =
      _$SearchUserWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class _$SearchUserWatcherStateCopyWithImpl<$Res>
    implements $SearchUserWatcherStateCopyWith<$Res> {
  _$SearchUserWatcherStateCopyWithImpl(this._value, this._then);

  final SearchUserWatcherState _value;
  // ignore: unused_field
  final $Res Function(SearchUserWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordTitle: keywordTitle == freezed
          ? _value.keywordTitle
          : keywordTitle // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$SearchUserWatcherStateCopyWith<$Res>
    implements $SearchUserWatcherStateCopyWith<$Res> {
  factory _$SearchUserWatcherStateCopyWith(_SearchUserWatcherState value,
          $Res Function(_SearchUserWatcherState) then) =
      __$SearchUserWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool showErrors,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class __$SearchUserWatcherStateCopyWithImpl<$Res>
    extends _$SearchUserWatcherStateCopyWithImpl<$Res>
    implements _$SearchUserWatcherStateCopyWith<$Res> {
  __$SearchUserWatcherStateCopyWithImpl(_SearchUserWatcherState _value,
      $Res Function(_SearchUserWatcherState) _then)
      : super(_value, (v) => _then(v as _SearchUserWatcherState));

  @override
  _SearchUserWatcherState get _value => super._value as _SearchUserWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? showErrors = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_SearchUserWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordTitle: keywordTitle == freezed
          ? _value.keywordTitle
          : keywordTitle // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc

class _$_SearchUserWatcherState implements _SearchUserWatcherState {
  const _$_SearchUserWatcherState(
      {required this.isLoading,
      required this.showErrors,
      required this.keywordTitle,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final bool showErrors;
  @override
  final Either<InvalidInputFailure, String> keywordTitle;
  @override
  final Either<Failure, List<ArtEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'SearchUserWatcherState(isLoading: $isLoading, showErrors: $showErrors, keywordTitle: $keywordTitle, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchUserWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.keywordTitle, keywordTitle) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(keywordTitle),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$SearchUserWatcherStateCopyWith<_SearchUserWatcherState> get copyWith =>
      __$SearchUserWatcherStateCopyWithImpl<_SearchUserWatcherState>(
          this, _$identity);
}

abstract class _SearchUserWatcherState implements SearchUserWatcherState {
  const factory _SearchUserWatcherState(
          {required bool isLoading,
          required bool showErrors,
          required Either<InvalidInputFailure, String> keywordTitle,
          Either<Failure, List<ArtEntity>>? failureOrSuccess}) =
      _$_SearchUserWatcherState;

  @override
  bool get isLoading;
  @override
  bool get showErrors;
  @override
  Either<InvalidInputFailure, String> get keywordTitle;
  @override
  Either<Failure, List<ArtEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$SearchUserWatcherStateCopyWith<_SearchUserWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
