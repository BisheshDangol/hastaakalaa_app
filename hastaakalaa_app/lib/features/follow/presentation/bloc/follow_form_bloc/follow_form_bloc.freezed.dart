// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'follow_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FollowFormStateTearOff {
  const _$FollowFormStateTearOff();

  _FollowFormState call(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, String>? failureOrSuccess}) {
    return _FollowFormState(
      isLoading: isLoading,
      id: id,
      showErrors: showErrors,
      followList: followList,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $FollowFormState = _$FollowFormStateTearOff();

/// @nodoc
mixin _$FollowFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  List<FollowEntity>? get followList => throw _privateConstructorUsedError;
  Either<Failure, String>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FollowFormStateCopyWith<FollowFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FollowFormStateCopyWith<$Res> {
  factory $FollowFormStateCopyWith(
          FollowFormState value, $Res Function(FollowFormState) then) =
      _$FollowFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, String>? failureOrSuccess});
}

/// @nodoc
class _$FollowFormStateCopyWithImpl<$Res>
    implements $FollowFormStateCopyWith<$Res> {
  _$FollowFormStateCopyWithImpl(this._value, this._then);

  final FollowFormState _value;
  // ignore: unused_field
  final $Res Function(FollowFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followList = freezed,
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
      followList: followList == freezed
          ? _value.followList
          : followList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
    ));
  }
}

/// @nodoc
abstract class _$FollowFormStateCopyWith<$Res>
    implements $FollowFormStateCopyWith<$Res> {
  factory _$FollowFormStateCopyWith(
          _FollowFormState value, $Res Function(_FollowFormState) then) =
      __$FollowFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, String>? failureOrSuccess});
}

/// @nodoc
class __$FollowFormStateCopyWithImpl<$Res>
    extends _$FollowFormStateCopyWithImpl<$Res>
    implements _$FollowFormStateCopyWith<$Res> {
  __$FollowFormStateCopyWithImpl(
      _FollowFormState _value, $Res Function(_FollowFormState) _then)
      : super(_value, (v) => _then(v as _FollowFormState));

  @override
  _FollowFormState get _value => super._value as _FollowFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? followList = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_FollowFormState(
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
      followList: followList == freezed
          ? _value.followList
          : followList // ignore: cast_nullable_to_non_nullable
              as List<FollowEntity>?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, String>?,
    ));
  }
}

/// @nodoc

class _$_FollowFormState implements _FollowFormState {
  const _$_FollowFormState(
      {required this.isLoading,
      this.id,
      required this.showErrors,
      this.followList,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final int? id;
  @override
  final bool showErrors;
  @override
  final List<FollowEntity>? followList;
  @override
  final Either<Failure, String>? failureOrSuccess;

  @override
  String toString() {
    return 'FollowFormState(isLoading: $isLoading, id: $id, showErrors: $showErrors, followList: $followList, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FollowFormState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.followList, followList) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(followList),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$FollowFormStateCopyWith<_FollowFormState> get copyWith =>
      __$FollowFormStateCopyWithImpl<_FollowFormState>(this, _$identity);
}

abstract class _FollowFormState implements FollowFormState {
  const factory _FollowFormState(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      List<FollowEntity>? followList,
      Either<Failure, String>? failureOrSuccess}) = _$_FollowFormState;

  @override
  bool get isLoading;
  @override
  int? get id;
  @override
  bool get showErrors;
  @override
  List<FollowEntity>? get followList;
  @override
  Either<Failure, String>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$FollowFormStateCopyWith<_FollowFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
