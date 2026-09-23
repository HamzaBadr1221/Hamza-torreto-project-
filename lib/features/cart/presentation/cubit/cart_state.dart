import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/cart_model.dart';
part 'cart_state.freezed.dart';
@freezed
abstract class CartState with _$CartState {
  const factory CartState.initial() = _Initial;
  const factory CartState.loading() = _Loading;
  const factory CartState.success(
      CartModel cart,
      ) = _Success;
  const factory CartState.addedToCart() = _AddedToCart;
  const factory CartState.error(
      String message,
      ) = _Error;
}