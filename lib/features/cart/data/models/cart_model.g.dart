// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CartModel _$CartModelFromJson(Map<String, dynamic> json) => _CartModel(
  cartId: json['cartId'] as String,
  cartItems: (json['cartItems'] as List<dynamic>)
      .map((e) => CartItemModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CartModelToJson(_CartModel instance) =>
    <String, dynamic>{
      'cartId': instance.cartId,
      'cartItems': instance.cartItems,
    };

_CartItemModel _$CartItemModelFromJson(Map<String, dynamic> json) =>
    _CartItemModel(
      itemId: json['itemId'] as String,
      productId: json['productId'] as String,
      productName: json['productName'] as String,
      productCoverUrl: json['productCoverUrl'] as String,
      productStock: (json['productStock'] as num).toInt(),
      weightInGrams: (json['weightInGrams'] as num).toDouble(),
      quantity: (json['quantity'] as num).toInt(),
      discountPercentage: (json['discountPercentage'] as num).toDouble(),
      basePricePerUnit: (json['basePricePerUnit'] as num).toDouble(),
      finalPricePerUnit: (json['finalPricePerUnit'] as num).toDouble(),
      totalPrice: (json['totalPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$CartItemModelToJson(_CartItemModel instance) =>
    <String, dynamic>{
      'itemId': instance.itemId,
      'productId': instance.productId,
      'productName': instance.productName,
      'productCoverUrl': instance.productCoverUrl,
      'productStock': instance.productStock,
      'weightInGrams': instance.weightInGrams,
      'quantity': instance.quantity,
      'discountPercentage': instance.discountPercentage,
      'basePricePerUnit': instance.basePricePerUnit,
      'finalPricePerUnit': instance.finalPricePerUnit,
      'totalPrice': instance.totalPrice,
    };
