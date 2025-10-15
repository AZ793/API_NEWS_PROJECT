// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'all_data_model.dart';

class AllDataModelMapper extends ClassMapperBase<AllDataModel> {
  AllDataModelMapper._();

  static AllDataModelMapper? _instance;
  static AllDataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AllDataModelMapper._());
      ResultModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AllDataModel';

  static int _$numResults(AllDataModel v) => v.numResults;
  static const Field<AllDataModel, int> _f$numResults = Field(
    'numResults',
    _$numResults,
    key: r'num_results',
  );
  static List<ResultModel> _$results(AllDataModel v) => v.results;
  static const Field<AllDataModel, List<ResultModel>> _f$results = Field(
    'results',
    _$results,
  );

  @override
  final MappableFields<AllDataModel> fields = const {
    #numResults: _f$numResults,
    #results: _f$results,
  };

  static AllDataModel _instantiate(DecodingData data) {
    return AllDataModel(
      numResults: data.dec(_f$numResults),
      results: data.dec(_f$results),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static AllDataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AllDataModel>(map);
  }

  static AllDataModel fromJson(String json) {
    return ensureInitialized().decodeJson<AllDataModel>(json);
  }
}

mixin AllDataModelMappable {
  String toJson() {
    return AllDataModelMapper.ensureInitialized().encodeJson<AllDataModel>(
      this as AllDataModel,
    );
  }

  Map<String, dynamic> toMap() {
    return AllDataModelMapper.ensureInitialized().encodeMap<AllDataModel>(
      this as AllDataModel,
    );
  }

  AllDataModelCopyWith<AllDataModel, AllDataModel, AllDataModel> get copyWith =>
      _AllDataModelCopyWithImpl<AllDataModel, AllDataModel>(
        this as AllDataModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return AllDataModelMapper.ensureInitialized().stringifyValue(
      this as AllDataModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return AllDataModelMapper.ensureInitialized().equalsValue(
      this as AllDataModel,
      other,
    );
  }

  @override
  int get hashCode {
    return AllDataModelMapper.ensureInitialized().hashValue(
      this as AllDataModel,
    );
  }
}

extension AllDataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AllDataModel, $Out> {
  AllDataModelCopyWith<$R, AllDataModel, $Out> get $asAllDataModel =>
      $base.as((v, t, t2) => _AllDataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AllDataModelCopyWith<$R, $In extends AllDataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ResultModel,
    ResultModelCopyWith<$R, ResultModel, ResultModel>
  >
  get results;
  $R call({int? numResults, List<ResultModel>? results});
  AllDataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AllDataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AllDataModel, $Out>
    implements AllDataModelCopyWith<$R, AllDataModel, $Out> {
  _AllDataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AllDataModel> $mapper =
      AllDataModelMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ResultModel,
    ResultModelCopyWith<$R, ResultModel, ResultModel>
  >
  get results => ListCopyWith(
    $value.results,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(results: v),
  );
  @override
  $R call({int? numResults, List<ResultModel>? results}) => $apply(
    FieldCopyWithData({
      if (numResults != null) #numResults: numResults,
      if (results != null) #results: results,
    }),
  );
  @override
  AllDataModel $make(CopyWithData data) => AllDataModel(
    numResults: data.get(#numResults, or: $value.numResults),
    results: data.get(#results, or: $value.results),
  );

  @override
  AllDataModelCopyWith<$R2, AllDataModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AllDataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

