import 'dart:io';

import 'package:dartz/dartz.dart';

class InvalidInputFailure {
  dynamic value;
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

  Either<InvalidInputFailure, int> isInteger({String? value}) {
    final parsed = int.tryParse(value ?? '');
    return parsed == null
        ? left(
            InvalidInputFailure(
              value: value,
              msg: shouldBeIntegerMessage,
            ),
          )
        : right(parsed);
  }

  Either<InvalidInputFailure, File> isImage({File? value}) {
    return value == null
        ? left(
            InvalidInputFailure(
              value: 'value',
              msg: emptyFieldMessage,
            ),
          )
        : right(value);
  }
}
