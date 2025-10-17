import 'package:dio/dio.dart';
import 'package:new_project/core/errors/safe_call.dart';
import 'package:new_project/network/methods/constant_api.dart';
import 'package:new_project/network/model/all_data_model.dart';

class SharedApi {
  // Create an instance of ConstantApi to access API settings and Dio client
  final ConstantApi _constantApi = ConstantApi();

  // Fetch shared articles from the API
  // The period parameter defines the time range (default = 1 day)
  Future<AllDataModel> getSharedArticles({int period = 1}) async {
    // Use safeCall to handle any network or parsing errors safely
    return await safeCall(() async {
      // Send a GET request to the shared articles endpoint
      final response = await _constantApi.dio.get(
        _constantApi.sharedEndPoint + period.toString() + _constantApi.token,
        options: Options(headers: _constantApi.header),
      );

      // Map the API JSON response to a Dart model
      final allData = AllDataModelMapper.fromMap(response.data);

      // Return the parsed model
      return allData;
    });
  }
}
