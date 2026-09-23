import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/add_to_cart_request.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/get_cart.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final GetCart getCart;
  final AddToCart addToCart;

  CartCubit({
    required this.getCart,
    required this.addToCart,
  }) : super(const CartState.initial());

  // ================= GET CART =================

  Future<void> fetchCart() async {
    emit(const CartState.loading());

    try {
      final cart = await getCart();

      emit(
        CartState.success(cart),
      );
    } catch (e) {
      emit(
        CartState.error(e.toString()),
      );
    }
  }

  // ================= ADD TO CART =================

  Future<void> addProductToCart({
    required String productId,
    int quantity = 1,
  }) async {
    try {
      await addToCart(
        AddToCartRequest(
          productId: productId,
          quantity: quantity,
        ),
      );

      emit(const CartState.addedToCart());

      // Refresh cart after adding
      await fetchCart();
    } catch (e) {
      emit(
        CartState.error(e.toString()),
      );
    }
  }
}