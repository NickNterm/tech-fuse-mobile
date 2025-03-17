// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_sensor_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeneralSensorModel> _$generalSensorModelSerializer =
    new _$GeneralSensorModelSerializer();

class _$GeneralSensorModelSerializer
    implements StructuredSerializer<GeneralSensorModel> {
  @override
  final Iterable<Type> types = const [GeneralSensorModel, _$GeneralSensorModel];
  @override
  final String wireName = 'GeneralSensorModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GeneralSensorModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'sensor_name',
      serializers.serialize(object.sensorName,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.long, specifiedType: const FullType(double)),
      'notes',
      serializers.serialize(object.notes,
          specifiedType: const FullType(String)),
      'min_value',
      serializers.serialize(object.min, specifiedType: const FullType(double)),
      'max_value',
      serializers.serialize(object.max, specifiedType: const FullType(double)),
      'sensor_type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'last_service',
      serializers.serialize(object.lastService,
          specifiedType: const FullType(DateTime)),
      'installation_date',
      serializers.serialize(object.installationDate,
          specifiedType: const FullType(DateTime)),
      'sensor_values',
      serializers.serialize(object.values,
          specifiedType: const FullType(
              BuiltList, const [const FullType(GeneralSensorValueModel)])),
    ];

    return result;
  }

  @override
  GeneralSensorModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralSensorModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'sensor_name':
          result.sensorName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'lon':
          result.long = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'min_value':
          result.min = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'max_value':
          result.max = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'sensor_type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'last_service':
          result.lastService = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'installation_date':
          result.installationDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
        case 'sensor_values':
          result.values.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GeneralSensorValueModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralSensorModel extends GeneralSensorModel {
  @override
  final int id;
  @override
  final String sensorName;
  @override
  final double lat;
  @override
  final double long;
  @override
  final String notes;
  @override
  final double min;
  @override
  final double max;
  @override
  final String type;
  @override
  final DateTime lastService;
  @override
  final DateTime installationDate;
  @override
  final BuiltList<GeneralSensorValueModel> values;

  factory _$GeneralSensorModel(
          [void Function(GeneralSensorModelBuilder)? updates]) =>
      (new GeneralSensorModelBuilder()..update(updates))._build();

  _$GeneralSensorModel._(
      {required this.id,
      required this.sensorName,
      required this.lat,
      required this.long,
      required this.notes,
      required this.min,
      required this.max,
      required this.type,
      required this.lastService,
      required this.installationDate,
      required this.values})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GeneralSensorModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        sensorName, r'GeneralSensorModel', 'sensorName');
    BuiltValueNullFieldError.checkNotNull(lat, r'GeneralSensorModel', 'lat');
    BuiltValueNullFieldError.checkNotNull(long, r'GeneralSensorModel', 'long');
    BuiltValueNullFieldError.checkNotNull(
        notes, r'GeneralSensorModel', 'notes');
    BuiltValueNullFieldError.checkNotNull(min, r'GeneralSensorModel', 'min');
    BuiltValueNullFieldError.checkNotNull(max, r'GeneralSensorModel', 'max');
    BuiltValueNullFieldError.checkNotNull(type, r'GeneralSensorModel', 'type');
    BuiltValueNullFieldError.checkNotNull(
        lastService, r'GeneralSensorModel', 'lastService');
    BuiltValueNullFieldError.checkNotNull(
        installationDate, r'GeneralSensorModel', 'installationDate');
    BuiltValueNullFieldError.checkNotNull(
        values, r'GeneralSensorModel', 'values');
  }

  @override
  GeneralSensorModel rebuild(
          void Function(GeneralSensorModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralSensorModelBuilder toBuilder() =>
      new GeneralSensorModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralSensorModel &&
        id == other.id &&
        sensorName == other.sensorName &&
        lat == other.lat &&
        long == other.long &&
        notes == other.notes &&
        min == other.min &&
        max == other.max &&
        type == other.type &&
        lastService == other.lastService &&
        installationDate == other.installationDate &&
        values == other.values;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, sensorName.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, long.hashCode);
    _$hash = $jc(_$hash, notes.hashCode);
    _$hash = $jc(_$hash, min.hashCode);
    _$hash = $jc(_$hash, max.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, lastService.hashCode);
    _$hash = $jc(_$hash, installationDate.hashCode);
    _$hash = $jc(_$hash, values.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneralSensorModel')
          ..add('id', id)
          ..add('sensorName', sensorName)
          ..add('lat', lat)
          ..add('long', long)
          ..add('notes', notes)
          ..add('min', min)
          ..add('max', max)
          ..add('type', type)
          ..add('lastService', lastService)
          ..add('installationDate', installationDate)
          ..add('values', values))
        .toString();
  }
}

class GeneralSensorModelBuilder
    implements Builder<GeneralSensorModel, GeneralSensorModelBuilder> {
  _$GeneralSensorModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _sensorName;
  String? get sensorName => _$this._sensorName;
  set sensorName(String? sensorName) => _$this._sensorName = sensorName;

  double? _lat;
  double? get lat => _$this._lat;
  set lat(double? lat) => _$this._lat = lat;

  double? _long;
  double? get long => _$this._long;
  set long(double? long) => _$this._long = long;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  double? _min;
  double? get min => _$this._min;
  set min(double? min) => _$this._min = min;

  double? _max;
  double? get max => _$this._max;
  set max(double? max) => _$this._max = max;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  DateTime? _lastService;
  DateTime? get lastService => _$this._lastService;
  set lastService(DateTime? lastService) => _$this._lastService = lastService;

  DateTime? _installationDate;
  DateTime? get installationDate => _$this._installationDate;
  set installationDate(DateTime? installationDate) =>
      _$this._installationDate = installationDate;

  ListBuilder<GeneralSensorValueModel>? _values;
  ListBuilder<GeneralSensorValueModel> get values =>
      _$this._values ??= new ListBuilder<GeneralSensorValueModel>();
  set values(ListBuilder<GeneralSensorValueModel>? values) =>
      _$this._values = values;

  GeneralSensorModelBuilder();

  GeneralSensorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _sensorName = $v.sensorName;
      _lat = $v.lat;
      _long = $v.long;
      _notes = $v.notes;
      _min = $v.min;
      _max = $v.max;
      _type = $v.type;
      _lastService = $v.lastService;
      _installationDate = $v.installationDate;
      _values = $v.values.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralSensorModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralSensorModel;
  }

  @override
  void update(void Function(GeneralSensorModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneralSensorModel build() => _build();

  _$GeneralSensorModel _build() {
    _$GeneralSensorModel _$result;
    try {
      _$result = _$v ??
          new _$GeneralSensorModel._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GeneralSensorModel', 'id'),
            sensorName: BuiltValueNullFieldError.checkNotNull(
                sensorName, r'GeneralSensorModel', 'sensorName'),
            lat: BuiltValueNullFieldError.checkNotNull(
                lat, r'GeneralSensorModel', 'lat'),
            long: BuiltValueNullFieldError.checkNotNull(
                long, r'GeneralSensorModel', 'long'),
            notes: BuiltValueNullFieldError.checkNotNull(
                notes, r'GeneralSensorModel', 'notes'),
            min: BuiltValueNullFieldError.checkNotNull(
                min, r'GeneralSensorModel', 'min'),
            max: BuiltValueNullFieldError.checkNotNull(
                max, r'GeneralSensorModel', 'max'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'GeneralSensorModel', 'type'),
            lastService: BuiltValueNullFieldError.checkNotNull(
                lastService, r'GeneralSensorModel', 'lastService'),
            installationDate: BuiltValueNullFieldError.checkNotNull(
                installationDate, r'GeneralSensorModel', 'installationDate'),
            values: values.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'values';
        values.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GeneralSensorModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
