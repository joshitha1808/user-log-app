abstract class AppException implements Exception {
  final String message;
  final int? statusCode;

  const AppException(this.message, [this.statusCode]);

  @override
  String toString() => message;
}

class ServerException extends AppException {
  const ServerException([
    super.message = 'Server error occurred.',
    super.statusCode,
  ]);
}
