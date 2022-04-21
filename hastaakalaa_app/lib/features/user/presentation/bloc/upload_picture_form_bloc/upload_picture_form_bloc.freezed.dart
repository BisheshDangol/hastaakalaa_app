// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_picture_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadPictureFormStateTearOff {
  const _$UploadPictureFormStateTearOff();

  _UploadPictureFormState call(
      {required bool isLoading,
      required Either<InvalidInputFailure, File> image,
      required bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess}) {
    return _UploadPictureFormState(
      isLoading: isLoading,
      image: image,
      showErrors: showErrors,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $UploadPictureFormState = _$UploadPictureFormStateTearOff();

/// @nodoc
mixin _$UploadPictureFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<InvalidInputFailure, File> get image =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  Either<Failure, dynamic>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadPictureFormStateCopyWith<UploadPictureFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPictureFormStateCopyWith<$Res> {
  factory $UploadPictureFormStateCopyWith(UploadPictureFormState value,
          $Res Function(UploadPictureFormState) then) =
      _$UploadPictureFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, File> image,
      bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class _$UploadPictureFormStateCopyWithImpl<$Res>
    implements $UploadPictureFormStateCopyWith<$Res> {
  _$UploadPictureFormStateCopyWithImpl(this._value, this._then);

  final UploadPictureFormState _value;
  // ignore: unused_field
  final $Res Function(UploadPictureFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? image = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, File>,
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
abstract class _$UploadPictureFormStateCopyWith<$Res>
    implements $UploadPictureFormStateCopyWith<$Res> {
  factory _$UploadPictureFormStateCopyWith(_UploadPictureFormState value,
          $Res Function(_UploadPictureFormState) then) =
      __$UploadPictureFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Either<InvalidInputFailure, File> image,
      bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class __$UploadPictureFormStateCopyWithImpl<$Res>
    extends _$UploadPictureFormStateCopyWithImpl<$Res>
    implements _$UploadPictureFormStateCopyWith<$Res> {
  __$UploadPictureFormStateCopyWithImpl(_UploadPictureFormState _value,
      $Res Function(_UploadPictureFormState) _then)
      : super(_value, (v) => _then(v as _UploadPictureFormState));

  @override
  _UploadPictureFormState get _value => super._value as _UploadPictureFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? image = freezed,
    Object? showErrors = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_UploadPictureFormState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Either<InvalidInputFailure, File>,
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

class _$_UploadPictureFormState implements _UploadPictureFormState {
  const _$_UploadPictureFormState(
      {required this.isLoading,
      required this.image,
      required this.showErrors,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Either<InvalidInputFailure, File> image;
  @override
  final bool showErrors;
  @override
  final Either<Failure, dynamic>? failureOrSuccess;

  @override
  String toString() {
    return 'UploadPictureFormState(isLoading: $isLoading, image: $image, showErrors: $showErrors, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UploadPictureFormState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$UploadPictureFormStateCopyWith<_UploadPictureFormState> get copyWith =>
      __$UploadPictureFormStateCopyWithImpl<_UploadPictureFormState>(
          this, _$identity);
}

abstract class _UploadPictureFormState implements UploadPictureFormState {
  const factory _UploadPictureFormState(
      {required bool isLoading,
      required Either<InvalidInputFailure, File> image,
      required bool showErrors,
      Either<Failure, dynamic>? failureOrSuccess}) = _$_UploadPictureFormState;

  @override
  bool get isLoading;
  @override
  Either<InvalidInputFailure, File> get image;
  @override
  bool get showErrors;
  @override
  Either<Failure, dynamic>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$UploadPictureFormStateCopyWith<_UploadPictureFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
