
import 'package:new_project/network/methods/emailed_api.dart';
import 'package:new_project/network/methods/shared_api.dart';
import 'package:new_project/network/methods/viewed_api.dart';

class NetworkApi {
  EmailedApi emailedApi = EmailedApi();
  SharedApi sharedApi = SharedApi();
  ViewedApi viewedApi = ViewedApi();
}
