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
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralSensorModel extends GeneralSensorModel {
  @override
  final String name;

  factory _$GeneralSensorModel(
          [void Function(GeneralSensorModelBuilder)? updates]) =>
      (new GeneralSensorModelBuilder()..update(updates))._build();

  _$GeneralSensorModel._({required this.name}) : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'GeneralSensorModel', 'name');
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
    return other is GeneralSensorModel && name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeneralSensorModel')
          ..add('name', name))
        .toString();
  }
}

class GeneralSensorModelBuilder
    implements Builder<GeneralSensorModel, GeneralSensorModelBuilder> {
  _$GeneralSensorModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GeneralSensorModelBuilder();

  GeneralSensorModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
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
    final _$result = _$v ??
        new _$GeneralSensorModel._(
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'GeneralSensorModel', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
