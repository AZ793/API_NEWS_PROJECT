import 'dio_error_handler.dart';

Future<T> safeCall<T>(Future<T> Function() action) async {
  try {
    return await action();
  } catch (e) {
    throw DioErrorHandler.handle(e);
  }
}

// =====================================================================
// ================== !!! DO NOT TOUCH THIS FILE !!! ===================
// ==================================================== Abdulaziz ======
