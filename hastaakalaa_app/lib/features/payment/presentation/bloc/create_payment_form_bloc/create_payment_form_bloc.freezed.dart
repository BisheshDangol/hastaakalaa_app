// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_payment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreatePaymentFormStateTearOff {
  const _$CreatePaymentFormStateTearOff();

  _CreatePaymentFormState call(
      {required bool isLoading,
      required int price,
      required int seller_id,
      required bool showErrors,
      int? art_id,
      Either<Failure, dynamic>? failureOrSuccess}) {
    return _CreatePaymentFormState(
      isLoading: isLoading,
      price: price,
      seller_id: seller_id,
      showErrors: showErrors,
      art_id: art_id,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $CreatePaymentFormState = _$CreatePaymentFormStateTearOff();

/// @nodoc
mixin _$CreatePaymentFormState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get seller_id => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  int? get art_id => throw _privateConstructorUsedError;
  Either<Failure, dynamic>? get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePaymentFormStateCopyWith<CreatePaymentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentFormStateCopyWith<$Res> {
  factory $CreatePaymentFormStateCopyWith(CreatePaymentFormState value,
          $Res Function(CreatePaymentFormState) then) =
      _$CreatePaymentFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      int price,
      int seller_id,
      bool showErrors,
      int? art_id,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class _$CreatePaymentFormStateCopyWithImpl<$Res>
    implements $CreatePaymentFormStateCopyWith<$Res> {
  _$CreatePaymentFormStateCopyWithImpl(this._value, this._then);

  final CreatePaymentFormState _value;
  // ignore: unused_field
  final $Res Function(CreatePaymentFormState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? price = freezed,
    Object? seller_id = freezed,
    Object? showErrors = freezed,
    Object? art_id = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      seller_id: seller_id == freezed
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as int,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      art_id: art_id == freezed
          ? _value.art_id
          : art_id // ignore: cast_nullable_to_non_nullable
              as int?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$CreatePaymentFormStateCopyWith<$Res>
    implements $CreatePaymentFormStateCopyWith<$Res> {
  factory _$CreatePaymentFormStateCopyWith(_CreatePaymentFormState value,
          $Res Function(_CreatePaymentFormState) then) =
      __$CreatePaymentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      int price,
      int seller_id,
      bool showErrors,
      int? art_id,
      Either<Failure, dynamic>? failureOrSuccess});
}

/// @nodoc
class __$CreatePaymentFormStateCopyWithImpl<$Res>
    extends _$CreatePaymentFormStateCopyWithImpl<$Res>
    implements _$CreatePaymentFormStateCopyWith<$Res> {
  __$CreatePaymentFormStateCopyWithImpl(_CreatePaymentFormState _value,
      $Res Function(_CreatePaymentFormState) _then)
      : super(_value, (v) => _then(v as _CreatePaymentFormState));

  @override
  _CreatePaymentFormState get _value => super._value as _CreatePaymentFormState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? price = freezed,
    Object? seller_id = freezed,
    Object? showErrors = freezed,
    Object? art_id = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_CreatePaymentFormState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      seller_id: seller_id == freezed
          ? _value.seller_id
          : seller_id // ignore: cast_nullable_to_non_nullable
              as int,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      art_id: art_id == freezed
          ? _value.art_id
          : art_id // ignore: cast_nullable_to_non_nullable
              as int?,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_CreatePaymentFormState implements _CreatePaymentFormState {
  const _$_CreatePaymentFormState(
      {required this.isLoading,
      required this.price,
      required this.seller_id,
      required this.showErrors,
      this.art_id,
      this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final int price;
  @override
  final int seller_id;
  @override
  final bool showErrors;
  @override
  final int? art_id;
  @override
  final Either<Failure, dynamic>? failureOrSuccess;

  @override
  String toString() {
    return 'CreatePaymentFormState(isLoading: $isLoading, price: $price, seller_id: $seller_id, showErrors: $showErrors, art_id: $art_id, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreatePaymentFormState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.seller_id, seller_id) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality().equals(other.art_id, art_id) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(seller_id),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(art_id),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$CreatePaymentFormStateCopyWith<_CreatePaymentFormState> get copyWith =>
      __$CreatePaymentFormStateCopyWithImpl<_CreatePaymentFormState>(
          this, _$identity);
}

abstract class _CreatePaymentFormState implements CreatePaymentFormState {
  const factory _CreatePaymentFormState(
      {required bool isLoading,
      required int price,
      required int seller_id,
      required bool showErrors,
      int? art_id,
      Either<Failure, dynamic>? failureOrSuccess}) = _$_CreatePaymentFormState;

  @override
  bool get isLoading;
  @override
  int get price;
  @override
  int get seller_id;
  @override
  bool get showErrors;
  @override
  int? get art_id;
  @override
  Either<Failure, dynamic>? get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$CreatePaymentFormStateCopyWith<_CreatePaymentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
