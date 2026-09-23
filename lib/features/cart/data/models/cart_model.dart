import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
abstract class CartModel with _$CartModel {
  const factory CartModel({
    required String cartId,
    required List<CartItemModel> cartItems,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}

@freezed
abstract class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    required String itemId,
    required String productId,
    required String productName,
    required String productCoverUrl,
    required int productStock,
    required double weightInGrams,
    required int quantity,
    required double discountPercentage,
    required double basePricePerUnit,
    required double finalPricePerUnit,
    required double totalPrice,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}