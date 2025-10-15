// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'result_model.dart';

class ResultModelMapper extends ClassMapperBase<ResultModel> {
  ResultModelMapper._();

  static ResultModelMapper? _instance;
  static ResultModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ResultModelMapper._());
      MediaModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ResultModel';

  static String _$url(ResultModel v) => v.url;
  static const Field<ResultModel, String> _f$url = Field('url', _$url);
  static int _$id(ResultModel v) => v.id;
  static const Field<ResultModel, int> _f$id = Field('id', _$id);
  static int _$assetId(ResultModel v) => v.assetId;
  static const Field<ResultModel, int> _f$assetId = Field(
    'assetId',
    _$assetId,
    key: r'asset_id',
  );
  static String _$title(ResultModel v) => v.title;
  static const Field<ResultModel, String> _f$title = Field('title', _$title);
  static String _$section(ResultModel v) => v.section;
  static const Field<ResultModel, String> _f$section = Field(
    'section',
    _$section,
  );
  static String? _$subsection(ResultModel v) => v.subsection;
  static const Field<ResultModel, String> _f$subsection = Field(
    'subsection',
    _$subsection,
    opt: true,
  );
  static String _$abstract(ResultModel v) => v.abstract;
  static const Field<ResultModel, String> _f$abstract = Field(
    'abstract',
    _$abstract,
  );
  static String _$byline(ResultModel v) => v.byline;
  static const Field<ResultModel, String> _f$byline = Field('byline', _$byline);
  static String _$source(ResultModel v) => v.source;
  static const Field<ResultModel, String> _f$source = Field('source', _$source);
  static String _$publishedDate(ResultModel v) => v.publishedDate;
  static const Field<ResultModel, String> _f$publishedDate = Field(
    'publishedDate',
    _$publishedDate,
    key: r'published_date',
  );
  static String? _$adxKeywords(ResultModel v) => v.adxKeywords;
  static const Field<ResultModel, String> _f$adxKeywords = Field(
    'adxKeywords',
    _$adxKeywords,
    key: r'adx_keywords',
    opt: true,
  );
  static List<MediaModel> _$media(ResultModel v) => v.media;
  static const Field<ResultModel, List<MediaModel>> _f$media = Field(
    'media',
    _$media,
  );

  @override
  final MappableFields<ResultModel> fields = const {
    #url: _f$url,
    #id: _f$id,
    #assetId: _f$assetId,
    #title: _f$title,
    #section: _f$section,
    #subsection: _f$subsection,
    #abstract: _f$abstract,
    #byline: _f$byline,
    #source: _f$source,
    #publishedDate: _f$publishedDate,
    #adxKeywords: _f$adxKeywords,
    #media: _f$media,
  };

  static ResultModel _instantiate(DecodingData data) {
    return ResultModel(
      url: data.dec(_f$url),
      id: data.dec(_f$id),
      assetId: data.dec(_f$assetId),
      title: data.dec(_f$title),
      section: data.dec(_f$section),
      subsection: data.dec(_f$subsection),
      abstract: data.dec(_f$abstract),
      byline: data.dec(_f$byline),
      source: data.dec(_f$source),
      publishedDate: data.dec(_f$publishedDate),
      adxKeywords: data.dec(_f$adxKeywords),
      media: data.dec(_f$media),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ResultModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ResultModel>(map);
  }

  static ResultModel fromJson(String json) {
    return ensureInitialized().decodeJson<ResultModel>(json);
  }
}

mixin ResultModelMappable {
  String toJson() {
    return ResultModelMapper.ensureInitialized().encodeJson<ResultModel>(
      this as ResultModel,
    );
  }

  Map<String, dynamic> toMap() {
    return ResultModelMapper.ensureInitialized().encodeMap<ResultModel>(
      this as ResultModel,
    );
  }

  ResultModelCopyWith<ResultModel, ResultModel, ResultModel> get copyWith =>
      _ResultModelCopyWithImpl<ResultModel, ResultModel>(
        this as ResultModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ResultModelMapper.ensureInitialized().stringifyValue(
      this as ResultModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return ResultModelMapper.ensureInitialized().equalsValue(
      this as ResultModel,
      other,
    );
  }

  @override
  int get hashCode {
    return ResultModelMapper.ensureInitialized().hashValue(this as ResultModel);
  }
}

extension ResultModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ResultModel, $Out> {
  ResultModelCopyWith<$R, ResultModel, $Out> get $asResultModel =>
      $base.as((v, t, t2) => _ResultModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ResultModelCopyWith<$R, $In extends ResultModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, MediaModel, MediaModelCopyWith<$R, MediaModel, MediaModel>>
  get media;
  $R call({
    String? url,
    int? id,
    int? assetId,
    String? title,
    String? section,
    String? subsection,
    String? abstract,
    String? byline,
    String? source,
    String? publishedDate,
    String? adxKeywords,
    List<MediaModel>? media,
  });
  ResultModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ResultModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ResultModel, $Out>
    implements ResultModelCopyWith<$R, ResultModel, $Out> {
  _ResultModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ResultModel> $mapper =
      ResultModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, MediaModel, MediaModelCopyWith<$R, MediaModel, MediaModel>>
  get media => ListCopyWith(
    $value.media,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(media: v),
  );
  @override
  $R call({
    String? url,
    int? id,
    int? assetId,
    String? title,
    String? section,
    Object? subsection = $none,
    String? abstract,
    String? byline,
    String? source,
    String? publishedDate,
    Object? adxKeywords = $none,
    List<MediaModel>? media,
  }) => $apply(
    FieldCopyWithData({
      if (url != null) #url: url,
      if (id != null) #id: id,
      if (assetId != null) #assetId: assetId,
      if (title != null) #title: title,
      if (section != null) #section: section,
      if (subsection != $none) #subsection: subsection,
      if (abstract != null) #abstract: abstract,
      if (byline != null) #byline: byline,
      if (source != null) #source: source,
      if (publishedDate != null) #publishedDate: publishedDate,
      if (adxKeywords != $none) #adxKeywords: adxKeywords,
      if (media != null) #media: media,
    }),
  );
  @override
  ResultModel $make(CopyWithData data) => ResultModel(
    url: data.get(#url, or: $value.url),
    id: data.get(#id, or: $value.id),
    assetId: data.get(#assetId, or: $value.assetId),
    title: data.get(#title, or: $value.title),
    section: data.get(#section, or: $value.section),
    subsection: data.get(#subsection, or: $value.subsection),
    abstract: data.get(#abstract, or: $value.abstract),
    byline: data.get(#byline, or: $value.byline),
    source: data.get(#source, or: $value.source),
    publishedDate: data.get(#publishedDate, or: $value.publishedDate),
    adxKeywords: data.get(#adxKeywords, or: $value.adxKeywords),
    media: data.get(#media, or: $value.media),
  );

  @override
  ResultModelCopyWith<$R2, ResultModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ResultModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

