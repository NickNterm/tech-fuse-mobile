// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_sensor_value_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeneralSensorValueModel> _$generalSensorValueModelSerializer =
    new _$GeneralSensorValueModelSerializer();

class _$GeneralSensorValueModelSerializer
    implements StructuredSerializer<GeneralSensorValueModel> {
  @override
  final Iterable<Type> types = const [
    GeneralSensorValueModel,
    _$GeneralSensorValueModel
  ];
  @override
  final String wireName = 'GeneralSensorValueModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GeneralSensorValueModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(String)),
      'date',
      serializers.serialize(object.date,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  GeneralSensorValueModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralSensorValueModelBuilder();

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
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime))! as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralSensorValueModel extends GeneralSensorValueModel {
  @override
  final int id;
  @override
  final String data;
  @override
  final DateTime date;

  factory _$GeneralSensorValueModel(
          [void Function(GeneralSensorValueModelBuilder)? updates]) =>
      (new GeneralSensorValueModelBuilder()..update(updates))._build();

  _$GeneralSensorValueModel._(
      {required this.id, required this.data, required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'GeneralSensorValueModel', 'id');
    BuiltValueNullFieldError.checkNotNull(
        data, r'GeneralSensorValueModel', 'data');
    BuiltValueNullFieldError.checkNotNull(
        date, r'GeneralSensorValueModel', 'date');
  }

  @override
  GeneralSensorValueModel rebuild(
          void Function(GeneralSensorValueModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralSensorValueModelBuilder toBuilder() =>
      new GeneralSensorValueModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralSensorValueModel &&
        id == other.id &&
        data == other.data &&
        date == other.date;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneralSensorValueModel')
          ..add('id', id)
          ..add('data', data)
          ..add('date', date))
        .toString();
  }
}

class GeneralSensorValueModelBuilder
    implements
        Builder<GeneralSensorValueModel, GeneralSensorValueModelBuilder> {
  _$GeneralSensorValueModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  GeneralSensorValueModelBuilder();

  GeneralSensorValueModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _data = $v.data;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralSensorValueModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralSensorValueModel;
  }

  @override
  void update(void Function(GeneralSensorValueModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeneralSensorValueModel build() => _build();

  _$GeneralSensorValueModel _build() {
    final _$result = _$v ??
        new _$GeneralSensorValueModel._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'GeneralSensorValueModel', 'id'),
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'GeneralSensorValueModel', 'data'),
          date: BuiltValueNullFieldError.checkNotNull(
              date, r'GeneralSensorValueModel', 'date'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
