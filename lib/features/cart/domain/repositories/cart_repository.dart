import '../../data/models/add_to_cart_request.dart';
import '../../data/models/cart_model.dart';

abstract class CartRepository {
  Future<CartModel> getCart();

  Future<void> addToCart(
      AddToCartRequest request,
      );
}