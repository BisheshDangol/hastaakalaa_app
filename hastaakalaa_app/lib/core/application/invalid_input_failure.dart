import 'package:dartz/dartz.dart';

class InvalidInputFailure {
  String? value;
  String msg;
  InvalidInputFailure({this.value, this.msg = 'No input value yet'});
}

class InputConvert {
  static String emptyFieldMessage = 'Value cannot be empty';
  static String shouldBeIntegerMessage = 'Value should be integer';
  Either<InvalidInputFailure, String> notEmpty({String? value}) {
    if (value?.isNotEmpty ?? false) {
      return right(value!);
    } else {
      return left(InvalidInputFailure(value: value, msg: emptyFieldMessage));
    }
  }

  Either<InvalidInputFailure, String> isInteger({String? value}) {
    final parsed = int.tryParse(value ?? '');
    return parsed == null
        ? left(
            InvalidInputFailure(
              value: value,
              msg: shouldBeIntegerMessage,
            ),
          )
        : right(value!);
  }
}
