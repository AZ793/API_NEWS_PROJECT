// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'media_model.dart';

class MediaModelMapper extends ClassMapperBase<MediaModel> {
  MediaModelMapper._();

  static MediaModelMapper? _instance;
  static MediaModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = MediaModelMapper._());
      MetadataModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'MediaModel';

  static String _$type(MediaModel v) => v.type;
  static const Field<MediaModel, String> _f$type = Field('type', _$type);
  static String? _$subtype(MediaModel v) => v.subtype;
  static const Field<MediaModel, String> _f$subtype = Field(
    'subtype',
    _$subtype,
    opt: true,
  );
  static String? _$caption(MediaModel v) => v.caption;
  static const Field<MediaModel, String> _f$caption = Field(
    'caption',
    _$caption,
    opt: true,
  );
  static String? _$copyright(MediaModel v) => v.copyright;
  static const Field<MediaModel, String> _f$copyright = Field(
    'copyright',
    _$copyright,
    opt: true,
  );
  static List<MetadataModel> _$mediaMetadata(MediaModel v) => v.mediaMetadata;
  static const Field<MediaModel, List<MetadataModel>> _f$mediaMetadata = Field(
    'mediaMetadata',
    _$mediaMetadata,
    key: r'media-metadata',
  );

  @override
  final MappableFields<MediaModel> fields = const {
    #type: _f$type,
    #subtype: _f$subtype,
    #caption: _f$caption,
    #copyright: _f$copyright,
    #mediaMetadata: _f$mediaMetadata,
  };

  static MediaModel _instantiate(DecodingData data) {
    return MediaModel(
      type: data.dec(_f$type),
      subtype: data.dec(_f$subtype),
      caption: data.dec(_f$caption),
      copyright: data.dec(_f$copyright),
      mediaMetadata: data.dec(_f$mediaMetadata),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static MediaModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<MediaModel>(map);
  }

  static MediaModel fromJson(String json) {
    return ensureInitialized().decodeJson<MediaModel>(json);
  }
}

mixin MediaModelMappable {
  String toJson() {
    return MediaModelMapper.ensureInitialized().encodeJson<MediaModel>(
      this as MediaModel,
    );
  }

  Map<String, dynamic> toMap() {
    return MediaModelMapper.ensureInitialized().encodeMap<MediaModel>(
      this as MediaModel,
    );
  }

  MediaModelCopyWith<MediaModel, MediaModel, MediaModel> get copyWith =>
      _MediaModelCopyWithImpl<MediaModel, MediaModel>(
        this as MediaModel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return MediaModelMapper.ensureInitialized().stringifyValue(
      this as MediaModel,
    );
  }

  @override
  bool operator ==(Object other) {
    return MediaModelMapper.ensureInitialized().equalsValue(
      this as MediaModel,
      other,
    );
  }

  @override
  int get hashCode {
    return MediaModelMapper.ensureInitialized().hashValue(this as MediaModel);
  }
}

extension MediaModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, MediaModel, $Out> {
  MediaModelCopyWith<$R, MediaModel, $Out> get $asMediaModel =>
      $base.as((v, t, t2) => _MediaModelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class MediaModelCopyWith<$R, $In extends MediaModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    MetadataModel,
    MetadataModelCopyWith<$R, MetadataModel, MetadataModel>
  >
  get mediaMetadata;
  $R call({
    String? type,
    String? subtype,
    String? caption,
    String? copyright,
    List<MetadataModel>? mediaMetadata,
  });
  MediaModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _MediaModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, MediaModel, $Out>
    implements MediaModelCopyWith<$R, MediaModel, $Out> {
  _MediaModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<MediaModel> $mapper =
      MediaModelMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    MetadataModel,
    MetadataModelCopyWith<$R, MetadataModel, MetadataModel>
  >
  get mediaMetadata => ListCopyWith(
    $value.mediaMetadata,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(mediaMetadata: v),
  );
  @override
  $R call({
    String? type,
    Object? subtype = $none,
    Object? caption = $none,
    Object? copyright = $none,
    List<MetadataModel>? mediaMetadata,
  }) => $apply(
    FieldCopyWithData({
      if (type != null) #type: type,
      if (subtype != $none) #subtype: subtype,
      if (caption != $none) #caption: caption,
      if (copyright != $none) #copyright: copyright,
      if (mediaMetadata != null) #mediaMetadata: mediaMetadata,
    }),
  );
  @override
  MediaModel $make(CopyWithData data) => MediaModel(
    type: data.get(#type, or: $value.type),
    subtype: data.get(#subtype, or: $value.subtype),
    caption: data.get(#caption, or: $value.caption),
    copyright: data.get(#copyright, or: $value.copyright),
    mediaMetadata: data.get(#mediaMetadata, or: $value.mediaMetadata),
  );

  @override
  MediaModelCopyWith<$R2, MediaModel, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _MediaModelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

