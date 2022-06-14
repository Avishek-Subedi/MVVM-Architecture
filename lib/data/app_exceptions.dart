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
