
class ErrorException implements Exception {
  final dynamic message;
  final dynamic statusCode;

  const ErrorException(this.message, this.statusCode);

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return 'Exception';
    return '$message';
  }
}