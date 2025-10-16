import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:new_project/network/methods/network_api.dart';
import 'package:new_project/network/model/all_data_model.dart';
import 'package:new_project/network/model/result_model.dart';
import 'package:result_dart/result_dart.dart';


class SharedLayer {
  final api = GetIt.I.get<NetworkApi>().sharedApi;
  AllDataModel? dataModel;

  // this function will check the GetIt stroge if it has data or not
  bool hasData() {
    return dataModel != null;
  }

  // this function will check the GetIt if the totalresults has data or not
  int totalResults() {
    return dataModel?.numResults ?? 0;
  }

  // this function will check the GetIt if the listResult has data or not
  List<ResultModel> articles() {
    return dataModel?.results ?? [];
  }

  checkIncomingData() {
    if (dataModel != null) {
      debugPrint('data coming successfully');
    } else {
      debugPrint('there are some problem with data');
    }
  }

  Future<Result<AllDataModel>> getSharedrticles({int period = 1}) async {
    try {
      dataModel = await api.getSharedArticles(period: period);
      return Success(dataModel!);
    } on FormatException catch (e) {
      return Failure(FormatException(e.message));
    } catch (e) {
      return Failure(FormatException(e.toString()));
    }
  }
}
