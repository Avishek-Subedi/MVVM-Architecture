class AppExcetpiton implements Exception {
  final _message;

  final _prefix;

  AppExcetpiton(this._message, this._prefix);

  // @override
  String toString() {
    return '$_prefix $_message';
  }
}

class FetchDataException extends AppExcetpiton {
  FetchDataException([String? message])
      : super(message, 'Error During Communication');
}

class BadRequestException extends AppExcetpiton {
  BadRequestException([String? message]) : super(message, 'Invalid Request');
}

class UnauthorizedException extends AppExcetpiton {
  UnauthorizedException([String? message])
      : super(message, 'Unauthorized Request');
}

class InvalidInputException extends AppExcetpiton {
  InvalidInputException([String? message]) : super(message, 'Invalid Input');
}
