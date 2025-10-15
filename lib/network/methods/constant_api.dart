import 'package:dio/dio.dart';

class ConstantApi {
  Dio dio = Dio();

  // ===== URLs ====== //
  final String baseUrl = "https://api.nytimes.com/svc/mostpopular/v2";
  int preiod = 1;

  // ===== End Points ====== //
  final String emailedEndPoint = "/emailed/";
  final String sharedEndPoint = "/shared/";
  final String viewedEndPoint = "/viewed/";

  // ===== Headers ====== //
  final Map<String, String> header = {"Accept": "application/json"};
  final String token = '.json?api-key=JMMbUThpcBqOcZ0iTHydNdes0cg2gpGp';
  ConstantApi() {
    dio.options = BaseOptions(baseUrl: baseUrl);
  }
}
