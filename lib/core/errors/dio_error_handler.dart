import 'package:dio/dio.dart';
import 'app_exception.dart';

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======

class DioErrorHandler {
  static AppException handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return const TimeoutException();

        case DioExceptionType.cancel:
          return const CancelledException();

        case DioExceptionType.badResponse:
          final statusCode = error.response?.statusCode ?? 0;
          final data = error.response?.data;

          switch (statusCode) {
            case 400:
            case 422:
              return BadRequestException(data?['message'] ?? 'Invalid input.');
            case 401:
              return const UnauthorizedException();
            case 404:
              return const NotFoundException();
            case 429:
              return const RateLimitException();
            case 500:
            case 502:
            case 503:
              return const ServerException();
            default:
              return const UnknownException();
          }

        case DioExceptionType.unknown:
          if (error.message?.contains('SocketException') ?? false) {
            return const NoInternetException();
          }
          return const UnknownException();

        default:
          return const UnknownException();
      }
    } else {
      return const UnknownException();
    }
  }
}

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======
