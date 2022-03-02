// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'art_list_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtListWatcherEventTearOff {
  const _$ArtListWatcherEventTearOff();

  _ChangedKeyword changedKeyword({String? keyword}) {
    return _ChangedKeyword(
      keyword: keyword,
    );
  }

  _PressedSearch pressedSearch() {
    return const _PressedSearch();
  }
}

/// @nodoc
const $ArtListWatcherEvent = _$ArtListWatcherEventTearOff();

/// @nodoc
mixin _$ArtListWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtListWatcherEventCopyWith<$Res> {
  factory $ArtListWatcherEventCopyWith(
          ArtListWatcherEvent value, $Res Function(ArtListWatcherEvent) then) =
      _$ArtListWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtListWatcherEventCopyWithImpl<$Res>
    implements $ArtListWatcherEventCopyWith<$Res> {
  _$ArtListWatcherEventCopyWithImpl(this._value, this._then);

  final ArtListWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArtListWatcherEvent) _then;
}

/// @nodoc
abstract class _$ChangedKeywordCopyWith<$Res> {
  factory _$ChangedKeywordCopyWith(
          _ChangedKeyword value, $Res Function(_ChangedKeyword) then) =
      __$ChangedKeywordCopyWithImpl<$Res>;
  $Res call({String? keyword});
}

/// @nodoc
class __$ChangedKeywordCopyWithImpl<$Res>
    extends _$ArtListWatcherEventCopyWithImpl<$Res>
    implements _$ChangedKeywordCopyWith<$Res> {
  __$ChangedKeywordCopyWithImpl(
      _ChangedKeyword _value, $Res Function(_ChangedKeyword) _then)
      : super(_value, (v) => _then(v as _ChangedKeyword));

  @override
  _ChangedKeyword get _value => super._value as _ChangedKeyword;

  @override
  $Res call({
    Object? keyword = freezed,
  }) {
    return _then(_ChangedKeyword(
      keyword: keyword == freezed
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedKeyword implements _ChangedKeyword {
  const _$_ChangedKeyword({this.keyword});

  @override
  final String? keyword;

  @override
  String toString() {
    return 'ArtListWatcherEvent.changedKeyword(keyword: $keyword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedKeyword &&
            const DeepCollectionEquality().equals(other.keyword, keyword));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(keyword));

  @JsonKey(ignore: true)
  @override
  _$ChangedKeywordCopyWith<_ChangedKeyword> get copyWith =>
      __$ChangedKeywordCopyWithImpl<_ChangedKeyword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
  }) {
    return changedKeyword(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) {
    return changedKeyword?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    required TResult orElse(),
  }) {
    if (changedKeyword != null) {
      return changedKeyword(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
  }) {
    return changedKeyword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) {
    return changedKeyword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) {
    if (changedKeyword != null) {
      return changedKeyword(this);
    }
    return orElse();
  }
}

abstract class _ChangedKeyword implements ArtListWatcherEvent {
  const factory _ChangedKeyword({String? keyword}) = _$_ChangedKeyword;

  String? get keyword;
  @JsonKey(ignore: true)
  _$ChangedKeywordCopyWith<_ChangedKeyword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PressedSearchCopyWith<$Res> {
  factory _$PressedSearchCopyWith(
          _PressedSearch value, $Res Function(_PressedSearch) then) =
      __$PressedSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$PressedSearchCopyWithImpl<$Res>
    extends _$ArtListWatcherEventCopyWithImpl<$Res>
    implements _$PressedSearchCopyWith<$Res> {
  __$PressedSearchCopyWithImpl(
      _PressedSearch _value, $Res Function(_PressedSearch) _then)
      : super(_value, (v) => _then(v as _PressedSearch));

  @override
  _PressedSearch get _value => super._value as _PressedSearch;
}

/// @nodoc

class _$_PressedSearch implements _PressedSearch {
  const _$_PressedSearch();

  @override
  String toString() {
    return 'ArtListWatcherEvent.pressedSearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PressedSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword) changedKeyword,
    required TResult Function() pressedSearch,
  }) {
    return pressedSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
  }) {
    return pressedSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword)? changedKeyword,
    TResult Function()? pressedSearch,
    required TResult orElse(),
  }) {
    if (pressedSearch != null) {
      return pressedSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedKeyword value) changedKeyword,
    required TResult Function(_PressedSearch value) pressedSearch,
  }) {
    return pressedSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
  }) {
    return pressedSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedKeyword value)? changedKeyword,
    TResult Function(_PressedSearch value)? pressedSearch,
    required TResult orElse(),
  }) {
    if (pressedSearch != null) {
      return pressedSearch(this);
    }
    return orElse();
  }
}

abstract class _PressedSearch implements ArtListWatcherEvent {
  const factory _PressedSearch() = _$_PressedSearch;
}

/// @nodoc
class _$ArtListWatcherStateTearOff {
  const _$ArtListWatcherStateTearOff();

  _ArtListWatcherState call(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, ArtModel>? failureOrSuccess}) {
    return _ArtListWatcherState(
      isLoading: isLoading,
      keywordTitle: keywordTitle,
      failureOrSuccess: failureOrSuccess,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<ArtEntity> artList) {
    return _Loaded(
      artList,
    );
  }

  _Failed failed(Failure failure) {
    return _Failed(
      failure,
    );
  }
}

/// @nodoc
const $ArtListWatcherState = _$ArtListWatcherStateTearOff();

/// @nodoc
mixin _$ArtListWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)
        $default, {
    required TResult Function() loading,
    required TResult Function(List<ArtEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtListWatcherStateCopyWith<$Res> {
  factory $ArtListWatcherStateCopyWith(
          ArtListWatcherState value, $Res Function(ArtListWatcherState) then) =
      _$ArtListWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtListWatcherStateCopyWithImpl<$Res>
    implements $ArtListWatcherStateCopyWith<$Res> {
  _$ArtListWatcherStateCopyWithImpl(this._value, this._then);

  final ArtListWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArtListWatcherState) _then;
}

/// @nodoc
abstract class _$ArtListWatcherStateCopyWith<$Res> {
  factory _$ArtListWatcherStateCopyWith(_ArtListWatcherState value,
          $Res Function(_ArtListWatcherState) then) =
      __$ArtListWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, ArtModel>? failureOrSuccess});
}

/// @nodoc
class __$ArtListWatcherStateCopyWithImpl<$Res>
    extends _$ArtListWatcherStateCopyWithImpl<$Res>
    implements _$ArtListWatcherStateCopyWith<$Res> {
  __$ArtListWatcherStateCopyWithImpl(
      _ArtListWatcherState _value, $Res Function(_ArtListWatcherState) _then)
      : super(_value, (v) => _then(v as _ArtListWatcherState));

  @override
  _ArtListWatcherState get _value => super._value as _ArtListWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? keywordTitle = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_ArtListWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      keywordTitle: keywordTitle == freezed
          ? _value.keywordTitle
          : keywordTitle // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, String>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, ArtModel>?,
    ));
  }
}

/// @nodoc

class _$_ArtListWatcherState implements _ArtListWatcherState {
  const _$_ArtListWatcherState(
      {required this.isLoading,
      required this.keywordTitle,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<InvalidInputFailure, String> keywordTitle;
  @override
  final Either<Failure, ArtModel>? failureOrSuccess;

  @override
  String toString() {
    return 'ArtListWatcherState(isLoading: $isLoading, keywordTitle: $keywordTitle, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtListWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.keywordTitle, keywordTitle) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(keywordTitle),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$ArtListWatcherStateCopyWith<_ArtListWatcherState> get copyWith =>
      __$ArtListWatcherStateCopyWithImpl<_ArtListWatcherState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)
        $default, {
    required TResult Function() loading,
    required TResult Function(List<ArtEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return $default(isLoading, keywordTitle, failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return $default?.call(isLoading, keywordTitle, failureOrSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isLoading, keywordTitle, failureOrSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ArtListWatcherState implements ArtListWatcherState {
  const factory _ArtListWatcherState(
      {required bool isLoading,
      required Either<InvalidInputFailure, String> keywordTitle,
      Either<Failure, ArtModel>? failureOrSuccess}) = _$_ArtListWatcherState;

  bool get isLoading;
  Either<InvalidInputFailure, String> get keywordTitle;
  Either<Failure, ArtModel>? get failureOrSuccess;
  @JsonKey(ignore: true)
  _$ArtListWatcherStateCopyWith<_ArtListWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ArtListWatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ArtListWatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)
        $default, {
    required TResult Function() loading,
    required TResult Function(List<ArtEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ArtListWatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ArtEntity> artList});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$ArtListWatcherStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? artList = freezed,
  }) {
    return _then(_Loaded(
      artList == freezed
          ? _value.artList
          : artList // ignore: cast_nullable_to_non_nullable
              as List<ArtEntity>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.artList);

  @override
  final List<ArtEntity> artList;

  @override
  String toString() {
    return 'ArtListWatcherState.loaded(artList: $artList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.artList, artList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(artList));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)
        $default, {
    required TResult Function() loading,
    required TResult Function(List<ArtEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return loaded(artList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return loaded?.call(artList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(artList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ArtListWatcherState {
  const factory _Loaded(List<ArtEntity> artList) = _$_Loaded;

  List<ArtEntity> get artList;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$FailedCopyWithImpl<$Res>
    extends _$ArtListWatcherStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failed(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ArtListWatcherState.failed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failed &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)
        $default, {
    required TResult Function() loading,
    required TResult Function(List<ArtEntity> artList) loaded,
    required TResult Function(Failure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool isLoading,
            Either<InvalidInputFailure, String> keywordTitle,
            Either<Failure, ArtModel>? failureOrSuccess)?
        $default, {
    TResult Function()? loading,
    TResult Function(List<ArtEntity> artList)? loaded,
    TResult Function(Failure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value) $default, {
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ArtListWatcherState value)? $default, {
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ArtListWatcherState {
  const factory _Failed(Failure failure) = _$_Failed;

  Failure get failure;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
