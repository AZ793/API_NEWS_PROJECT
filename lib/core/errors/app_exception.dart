// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======

abstract class AppException implements Exception {
  final String message;
  const AppException(this.message);
}

class NoInternetException extends AppException {
  const NoInternetException() : super('No internet connection.');
}

class TimeoutException extends AppException {
  const TimeoutException() : super('Connection timed out.');
}

class UnauthorizedException extends AppException {
  const UnauthorizedException() : super('Unauthorized. Please log in again.');
}

class BadRequestException extends AppException {
  const BadRequestException([String msg = 'Bad request.']) : super(msg);
}

class NotFoundException extends AppException {
  const NotFoundException() : super('Resource not found.');
}

class RateLimitException extends AppException {
  const RateLimitException()
    : super('Too many requests. Please try again later.');
}

class ServerException extends AppException {
  const ServerException() : super('Server error. Please try again later.');
}

class CancelledException extends AppException {
  const CancelledException() : super('Request was cancelled.');
}

class UnknownException extends AppException {
  const UnknownException() : super('Something went wrong.');
}

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======
