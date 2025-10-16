import 'package:get_it/get_it.dart';
import 'package:new_project/layer/emailed_layer.dart';
import 'package:new_project/layer/shared_layer.dart';
import 'package:new_project/layer/viewed_layer.dart';
import 'package:new_project/network/methods/network_api.dart';

void setup(){
  GetIt.instance.registerSingleton<NetworkApi>(NetworkApi());
  GetIt.instance.registerSingleton<EmailedLayer>(EmailedLayer());
  GetIt.instance.registerSingleton<SharedLayer>(SharedLayer());
  GetIt.instance.registerSingleton<ViewedLayer>(ViewedLayer());
}