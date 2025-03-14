import 'dart:developer';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:chopper/chopper.dart';

class BuiltValueConverter extends JsonConverter {
  final Serializers serializers;

  BuiltValueConverter(this.serializers);

  @override
  Request convertRequest(Request request) {
    final type = request.body.runtimeType;
    final serializer = serializers.serializerForType(type);
    final respo = super.convertRequest(
      request.copyWith(
        body: serializers.serializeWith(
          serializer!,
          request.body,
        ),
      ),
    );

    return respo;
  }

  @override
  Future<Response> convertError<BodyType, InnerType>(Response response) async {
    final error = await convertResponse(response);
    print('ERROR ${error.body} ${error.error}');
    log('ERROR ${error.body} ${error.error}');

    return error;
  }

  @override
  Future<Response<BodyType>> convertResponse<BodyType, SingleItemType>(
      Response response) async {
    final Response dynamicResponse = await super.convertResponse(response);
    final BodyType? customBody =
    _convertToCustomObject<SingleItemType>(dynamicResponse.body);
    return dynamicResponse.copyWith<BodyType>(body: customBody);
  }

  dynamic _convertToCustomObject<SingleItemType>(dynamic element) {
    if (element is SingleItemType) return element;

    if (element is List) {
      return _deserializeListOf<SingleItemType>(element);
    } else {
      return _deserialize<SingleItemType>(element);
    }
  }

  BuiltList<SingleItemType> _deserializeListOf<SingleItemType>(
      List dynamicList,
      ) {
    return BuiltList<SingleItemType>(
      dynamicList.map((element) => _deserialize<SingleItemType>(element)),
    );
  }

  SingleItemType? _deserialize<SingleItemType>(
      Map<String, dynamic>? value,
      ) {
    return serializers.deserializeWith(
      serializers.serializerForType(SingleItemType)
      as Serializer<SingleItemType>,
      value,
    );
  }
}
