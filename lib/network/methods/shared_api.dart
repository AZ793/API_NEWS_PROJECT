import 'package:dio/dio.dart';
import 'package:new_project/network/methods/constant_api.dart';
import 'package:new_project/network/model/all_data_model.dart';

class SharedApi {
  final ConstantApi _constantApi = ConstantApi();

  Future<AllDataModel> getSharedArticles({int period = 1}) async {
    final response = await _constantApi.dio.get(
      _constantApi.sharedEndPoint + period.toString() + _constantApi.token,
      options: Options(headers: _constantApi.header),
    );

    final allData = AllDataModelMapper.fromMap(response.data);
    return allData;
  }
}
