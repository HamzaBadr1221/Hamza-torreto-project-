import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_request.freezed.dart';
part 'add_to_cart_request.g.dart';

@freezed
abstract class AddToCartRequest with _$AddToCartRequest {
  const factory AddToCartRequest({
    required String productId,
    required int quantity,
  }) = _AddToCartRequest;

  factory AddToCartRequest.fromJson(Map<String, dynamic> json) =>
      _$AddToCartRequestFromJson(json);
}