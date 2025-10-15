// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'metadata_model.dart';

class MetadataModelMapper extends ClassMapperBase<MetadataModel> {
  MetadataModelMapper._();

  static MetadataModelMapper? _instance;
  static MetadataModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MetadataModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'MetadataModel';

  static String _$url(MetadataModel v) => v.url;
  static const Field<MetadataModel, String> _f$url = Field('url', _$url);
  static int? _$height(MetadataModel v) => v.height;
  static const Field<MetadataModel, int> _f$height = Field(
    'height',
    _$height,
    opt: true,
  );
  static int? _$width(MetadataModel v) => v.width;
  static const Field<MetadataModel, int> _f$width = Field(
    'width',
    _$width,
    opt: true,
  );

  @override
  final MappableFields<MetadataModel> fields = const {
    #url: _f$url,
    #height: _f$height,
    #width: _f$width,
  };

  static MetadataModel _instantiate(DecodingData data) {
    return MetadataModel(
      url: data.dec(_f$url),
      height: data.dec(_f$height),
      width: data.dec(_f$width),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MetadataModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MetadataModel>(map);
  }

  static MetadataModel fromJson(String json) {
    return ensureInitialized().decodeJson<MetadataModel>(json);
  }
}

mixin MetadataModelMappable {
  String toJson() {
    return MetadataModelMapper.ensureInitialized().encodeJson<MetadataModel>(
      this as MetadataModel,
    );
  }

  Map<String, dynamic> toMap() {
    return MetadataModelMapper.ensureInitialized().encodeMap<MetadataModel>(
      this as MetadataModel,
    );
  }

  MetadataModelCopyWith<MetadataModel, MetadataModel, MetadataModel>
  get copyWith => _MetadataModelCopyWithImpl<MetadataModel, MetadataModel>(
    this as MetadataModel,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return MetadataModelMapper.ensureInitialized().stringifyValue(
      this as MetadataModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return MetadataModelMapper.ensureInitialized().equalsValue(
      this as MetadataModel,
      other,
    );
  }

  @override
  int get hashCode {
    return MetadataModelMapper.ensureInitialized().hashValue(
      this as MetadataModel,
    );
  }
}

extension MetadataModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MetadataModel, $Out> {
  MetadataModelCopyWith<$R, MetadataModel, $Out> get $asMetadataModel =>
      $base.as((v, t, t2) => _MetadataModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MetadataModelCopyWith<$R, $In extends MetadataModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? url, int? height, int? width});
  MetadataModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MetadataModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MetadataModel, $Out>
    implements MetadataModelCopyWith<$R, MetadataModel, $Out> {
  _MetadataModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MetadataModel> $mapper =
      MetadataModelMapper.ensureInitialized();
  @override
  $R call({String? url, Object? height = $none, Object? width = $none}) =>
      $apply(
        FieldCopyWithData({
          if (url != null) #url: url,
          if (height != $none) #height: height,
          if (width != $none) #width: width,
        }),
      );
  @override
  MetadataModel $make(CopyWithData data) => MetadataModel(
    url: data.get(#url, or: $value.url),
    height: data.get(#height, or: $value.height),
    width: data.get(#width, or: $value.width),
  );

  @override
  MetadataModelCopyWith<$R2, MetadataModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MetadataModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

