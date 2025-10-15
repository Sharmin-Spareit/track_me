class AppException implements Exception {
  final String message;
  final String? code;

  AppException(this.message, {this.code});

  @override
  String toString() => message;
}

class LocationPermissionException extends AppException {
  LocationPermissionException(
    String message, {
    String? code,
  }) : super(message, code: code);
}

class LocationServiceException extends AppException {
  LocationServiceException(
    String message, {
    String? code,
  }) : super(message, code: code);
}

class ApiException extends AppException {
  ApiException(
    String message, {
    String? code,
  }) : super(message, code: code);
}
