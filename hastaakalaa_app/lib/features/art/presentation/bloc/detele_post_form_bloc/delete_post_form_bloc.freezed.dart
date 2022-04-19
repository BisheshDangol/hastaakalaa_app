// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'delete_post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DeletePostFormStateTearOff {
  const _$DeletePostFormStateTearOff();

  _DeletePostFormState call(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess}) {
    return _DeletePostFormState(
      isLoading: isLoading,
      id: id,
      showErrors: showErrors,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $DeletePostFormState = _$DeletePostFormStateTearOff();

/// @nodoc
mixin _$DeletePostFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<Failure, dynamic>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeletePostFormStateCopyWith<DeletePostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletePostFormStateCopyWith<$Res> {
  factory $DeletePostFormStateCopyWith(
          DeletePostFormState value, $Res Function(DeletePostFormState) then) =
      _$DeletePostFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class _$DeletePostFormStateCopyWithImpl<$Res>
    implements $DeletePostFormStateCopyWith<$Res> {
  _$DeletePostFormStateCopyWithImpl(this._value, this._then);

  final DeletePostFormState _value;
  // ignore: unused_field
  final $Res Function(DeletePostFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
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
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$DeletePostFormStateCopyWith<$Res>
    implements $DeletePostFormStateCopyWith<$Res> {
  factory _$DeletePostFormStateCopyWith(_DeletePostFormState value,
          $Res Function(_DeletePostFormState) then) =
      __$DeletePostFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int? id,
      bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class __$DeletePostFormStateCopyWithImpl<$Res>
    extends _$DeletePostFormStateCopyWithImpl<$Res>
    implements _$DeletePostFormStateCopyWith<$Res> {
  __$DeletePostFormStateCopyWithImpl(
      _DeletePostFormState _value, $Res Function(_DeletePostFormState) _then)
      : super(_value, (v) => _then(v as _DeletePostFormState));

  @override
  _DeletePostFormState get _value => super._value as _DeletePostFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? id = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_DeletePostFormState(
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
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_DeletePostFormState implements _DeletePostFormState {
  const _$_DeletePostFormState(
      {required this.isLoading,
      this.id,
      required this.showErrors,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final int? id;
  @override
  final bool showErrors;
  @override
  final Either<Failure, dynamic>? failureOrSuccess;

  @override
  String toString() {
    return 'DeletePostFormState(isLoading: $isLoading, id: $id, showErrors: $showErrors, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeletePostFormState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$DeletePostFormStateCopyWith<_DeletePostFormState> get copyWith =>
      __$DeletePostFormStateCopyWithImpl<_DeletePostFormState>(
          this, _$identity);
}

abstract class _DeletePostFormState implements DeletePostFormState {
  const factory _DeletePostFormState(
      {required bool isLoading,
      int? id,
      required bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess}) = _$_DeletePostFormState;

  @override
  bool get isLoading;
  @override
  int? get id;
  @override
  bool get showErrors;
  @override
  Either<Failure, dynamic>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$DeletePostFormStateCopyWith<_DeletePostFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
