import 'package:dio/dio.dart';
import 'package:new_project/core/errors/safe_call.dart';
import 'package:new_project/network/methods/constant_api.dart';
import 'package:new_project/network/model/all_data_model.dart';

class ViewedApi {
  // Create an instance of ConstantApi to access base configuration and Dio client
  final ConstantApi _constantApi = ConstantApi();

  // Fetch the most viewed articles from the API
  // The period parameter defines the number of days (default = 1)
  Future<AllDataModel> getViewedArticle({int period = 1}) async {
    // Wrap the entire network call inside safeCall for unified error handling
    return await safeCall(() async {
      // Perform a GET request to the "most viewed" endpoint
      final response = await _constantApi.dio.get(
        _constantApi.viewedEndPoint + period.toString() + _constantApi.token,
        options: Options(headers: _constantApi.header),
      );

      // Convert the JSON response into a strongly typed Dart model
      final allData = AllDataModelMapper.fromMap(response.data);

      // Return the parsed data model
      return allData;
    });
  }
}
