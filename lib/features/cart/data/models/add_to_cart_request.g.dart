// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AddToCartRequest _$AddToCartRequestFromJson(Map<String, dynamic> json) =>
    _AddToCartRequest(
      productId: json['productId'] as String,
      quantity: (json['quantity'] as num).toInt(),
    );

Map<String, dynamic> _$AddToCartRequestToJson(_AddToCartRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'quantity': instance.quantity,
    };
