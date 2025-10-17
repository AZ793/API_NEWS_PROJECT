import 'package:dio/dio.dart';
import 'package:new_project/network/methods/constant_api.dart';
import 'package:new_project/network/model/all_data_model.dart';
import 'package:new_project/core/errors/safe_call.dart';

class EmailedApi {
  // Create an instance of ConstantApi to access API configuration and Dio instance
  final ConstantApi _constantApi = ConstantApi();

  // Fetches emailed articles from the API
  // The default period is 1 (e.g., last day)
  Future<AllDataModel> getEmailedArticles({int period = 1}) async {
    // Wrap the request inside safeCall for error handling
    return await safeCall(() async {
      // Send a GET request to the NYTimes API
      final response = await _constantApi.dio.get(
        _constantApi.emailedEndPoint + period.toString() + _constantApi.token,
        options: Options(headers: _constantApi.header),
      );

      // Convert the API response (JSON) into a Dart model
      final allData = AllDataModelMapper.fromMap(response.data);

      // Return the parsed data model
      return allData;
    });
  }
}
