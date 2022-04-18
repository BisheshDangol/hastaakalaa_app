// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'art_filter_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArtFilterWatcherEventTearOff {
  const _$ArtFilterWatcherEventTearOff();

  _RetrieveArtList retrieveArtList({required String genre}) {
    return _RetrieveArtList(
      genre: genre,
    );
  }

  _ChangedGenre changedGenre({String? genre}) {
    return _ChangedGenre(
      genre: genre,
    );
  }
}

/// @nodoc
const $ArtFilterWatcherEvent = _$ArtFilterWatcherEventTearOff();

/// @nodoc
mixin _$ArtFilterWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String genre) retrieveArtList,
    required TResult Function(String? genre) changedGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveArtList value) retrieveArtList,
    required TResult Function(_ChangedGenre value) changedGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtFilterWatcherEventCopyWith<$Res> {
  factory $ArtFilterWatcherEventCopyWith(ArtFilterWatcherEvent value,
          $Res Function(ArtFilterWatcherEvent) then) =
      _$ArtFilterWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ArtFilterWatcherEventCopyWithImpl<$Res>
    implements $ArtFilterWatcherEventCopyWith<$Res> {
  _$ArtFilterWatcherEventCopyWithImpl(this._value, this._then);

  final ArtFilterWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ArtFilterWatcherEvent) _then;
}

/// @nodoc
abstract class _$RetrieveArtListCopyWith<$Res> {
  factory _$RetrieveArtListCopyWith(
          _RetrieveArtList value, $Res Function(_RetrieveArtList) then) =
      __$RetrieveArtListCopyWithImpl<$Res>;
  $Res call({String genre});
}

/// @nodoc
class __$RetrieveArtListCopyWithImpl<$Res>
    extends _$ArtFilterWatcherEventCopyWithImpl<$Res>
    implements _$RetrieveArtListCopyWith<$Res> {
  __$RetrieveArtListCopyWithImpl(
      _RetrieveArtList _value, $Res Function(_RetrieveArtList) _then)
      : super(_value, (v) => _then(v as _RetrieveArtList));

  @override
  _RetrieveArtList get _value => super._value as _RetrieveArtList;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_RetrieveArtList(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RetrieveArtList implements _RetrieveArtList {
  const _$_RetrieveArtList({required this.genre});

  @override
  final String genre;

  @override
  String toString() {
    return 'ArtFilterWatcherEvent.retrieveArtList(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RetrieveArtList &&
            const DeepCollectionEquality().equals(other.genre, genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genre));

  @JsonKey(ignore: true)
  @override
  _$RetrieveArtListCopyWith<_RetrieveArtList> get copyWith =>
      __$RetrieveArtListCopyWithImpl<_RetrieveArtList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String genre) retrieveArtList,
    required TResult Function(String? genre) changedGenre,
  }) {
    return retrieveArtList(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
  }) {
    return retrieveArtList?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
    required TResult orElse(),
  }) {
    if (retrieveArtList != null) {
      return retrieveArtList(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveArtList value) retrieveArtList,
    required TResult Function(_ChangedGenre value) changedGenre,
  }) {
    return retrieveArtList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
  }) {
    return retrieveArtList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
    required TResult orElse(),
  }) {
    if (retrieveArtList != null) {
      return retrieveArtList(this);
    }
    return orElse();
  }
}

abstract class _RetrieveArtList implements ArtFilterWatcherEvent {
  const factory _RetrieveArtList({required String genre}) = _$_RetrieveArtList;

  String get genre;
  @JsonKey(ignore: true)
  _$RetrieveArtListCopyWith<_RetrieveArtList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChangedGenreCopyWith<$Res> {
  factory _$ChangedGenreCopyWith(
          _ChangedGenre value, $Res Function(_ChangedGenre) then) =
      __$ChangedGenreCopyWithImpl<$Res>;
  $Res call({String? genre});
}

/// @nodoc
class __$ChangedGenreCopyWithImpl<$Res>
    extends _$ArtFilterWatcherEventCopyWithImpl<$Res>
    implements _$ChangedGenreCopyWith<$Res> {
  __$ChangedGenreCopyWithImpl(
      _ChangedGenre _value, $Res Function(_ChangedGenre) _then)
      : super(_value, (v) => _then(v as _ChangedGenre));

  @override
  _ChangedGenre get _value => super._value as _ChangedGenre;

  @override
  $Res call({
    Object? genre = freezed,
  }) {
    return _then(_ChangedGenre(
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChangedGenre implements _ChangedGenre {
  const _$_ChangedGenre({this.genre});

  @override
  final String? genre;

  @override
  String toString() {
    return 'ArtFilterWatcherEvent.changedGenre(genre: $genre)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangedGenre &&
            const DeepCollectionEquality().equals(other.genre, genre));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(genre));

  @JsonKey(ignore: true)
  @override
  _$ChangedGenreCopyWith<_ChangedGenre> get copyWith =>
      __$ChangedGenreCopyWithImpl<_ChangedGenre>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String genre) retrieveArtList,
    required TResult Function(String? genre) changedGenre,
  }) {
    return changedGenre(genre);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
  }) {
    return changedGenre?.call(genre);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String genre)? retrieveArtList,
    TResult Function(String? genre)? changedGenre,
    required TResult orElse(),
  }) {
    if (changedGenre != null) {
      return changedGenre(genre);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RetrieveArtList value) retrieveArtList,
    required TResult Function(_ChangedGenre value) changedGenre,
  }) {
    return changedGenre(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
  }) {
    return changedGenre?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RetrieveArtList value)? retrieveArtList,
    TResult Function(_ChangedGenre value)? changedGenre,
    required TResult orElse(),
  }) {
    if (changedGenre != null) {
      return changedGenre(this);
    }
    return orElse();
  }
}

abstract class _ChangedGenre implements ArtFilterWatcherEvent {
  const factory _ChangedGenre({String? genre}) = _$_ChangedGenre;

  String? get genre;
  @JsonKey(ignore: true)
  _$ChangedGenreCopyWith<_ChangedGenre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ArtFilterWatcherStateTearOff {
  const _$ArtFilterWatcherStateTearOff();

  _ArtFilterWatcherState call(
      {required bool isLoading,
      String? genre,
      List<ArtEntity>? artList,
      Either<Failure, List<ArtEntity>>? failureOrSuccess}) {
    return _ArtFilterWatcherState(
      isLoading: isLoading,
      genre: genre,
      artList: artList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $ArtFilterWatcherState = _$ArtFilterWatcherStateTearOff();

/// @nodoc
mixin _$ArtFilterWatcherState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get genre => throw _privateConstructorUsedError;
  List<ArtEntity>? get artList => throw _privateConstructorUsedError;
  Either<Failure, List<ArtEntity>>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArtFilterWatcherStateCopyWith<ArtFilterWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtFilterWatcherStateCopyWith<$Res> {
  factory $ArtFilterWatcherStateCopyWith(ArtFilterWatcherState value,
          $Res Function(ArtFilterWatcherState) then) =
      _$ArtFilterWatcherStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String? genre,
      List<ArtEntity>? artList,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class _$ArtFilterWatcherStateCopyWithImpl<$Res>
    implements $ArtFilterWatcherStateCopyWith<$Res> {
  _$ArtFilterWatcherStateCopyWithImpl(this._value, this._then);

  final ArtFilterWatcherState _value;
  // ignore: unused_field
  final $Res Function(ArtFilterWatcherState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? genre = freezed,
    Object? artList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      artList: artList == freezed
          ? _value.artList
          : artList // ignore: cast_nullable_to_non_nullable
              as List<ArtEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc
abstract class _$ArtFilterWatcherStateCopyWith<$Res>
    implements $ArtFilterWatcherStateCopyWith<$Res> {
  factory _$ArtFilterWatcherStateCopyWith(_ArtFilterWatcherState value,
          $Res Function(_ArtFilterWatcherState) then) =
      __$ArtFilterWatcherStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String? genre,
      List<ArtEntity>? artList,
      Either<Failure, List<ArtEntity>>? failureOrSuccess});
}

/// @nodoc
class __$ArtFilterWatcherStateCopyWithImpl<$Res>
    extends _$ArtFilterWatcherStateCopyWithImpl<$Res>
    implements _$ArtFilterWatcherStateCopyWith<$Res> {
  __$ArtFilterWatcherStateCopyWithImpl(_ArtFilterWatcherState _value,
      $Res Function(_ArtFilterWatcherState) _then)
      : super(_value, (v) => _then(v as _ArtFilterWatcherState));

  @override
  _ArtFilterWatcherState get _value => super._value as _ArtFilterWatcherState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? genre = freezed,
    Object? artList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_ArtFilterWatcherState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      genre: genre == freezed
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      artList: artList == freezed
          ? _value.artList
          : artList // ignore: cast_nullable_to_non_nullable
              as List<ArtEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ArtEntity>>?,
    ));
  }
}

/// @nodoc

class _$_ArtFilterWatcherState implements _ArtFilterWatcherState {
  const _$_ArtFilterWatcherState(
      {required this.isLoading,
      this.genre,
      this.artList,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final String? genre;
  @override
  final List<ArtEntity>? artList;
  @override
  final Either<Failure, List<ArtEntity>>? failureOrSuccess;

  @override
  String toString() {
    return 'ArtFilterWatcherState(isLoading: $isLoading, genre: $genre, artList: $artList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArtFilterWatcherState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.genre, genre) &&
            const DeepCollectionEquality().equals(other.artList, artList) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(genre),
      const DeepCollectionEquality().hash(artList),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$ArtFilterWatcherStateCopyWith<_ArtFilterWatcherState> get copyWith =>
      __$ArtFilterWatcherStateCopyWithImpl<_ArtFilterWatcherState>(
          this, _$identity);
}

abstract class _ArtFilterWatcherState implements ArtFilterWatcherState {
  const factory _ArtFilterWatcherState(
          {required bool isLoading,
          String? genre,
          List<ArtEntity>? artList,
          Either<Failure, List<ArtEntity>>? failureOrSuccess}) =
      _$_ArtFilterWatcherState;

  @override
  bool get isLoading;
  @override
  String? get genre;
  @override
  List<ArtEntity>? get artList;
  @override
  Either<Failure, List<ArtEntity>>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$ArtFilterWatcherStateCopyWith<_ArtFilterWatcherState> get copyWith =>
      throw _privateConstructorUsedError;
}
