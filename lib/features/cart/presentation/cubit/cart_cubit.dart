import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/add_to_cart_request.dart';
import '../../domain/usecases/add_to_cart.dart';
import '../../domain/usecases/delete_cart_item.dart';
import '../../domain/usecases/get_cart.dart';
import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final GetCart getCart;
  final AddToCart addToCart;
  final DeleteCartItem deleteCartItem;

  CartCubit({
    required this.getCart,
    required this.addToCart,
    required this.deleteCartItem,
  }) : super(
    const CartState.initial(),
  );


  Future<void> fetchCart() async {
    emit(
      const CartState.loading(),
    );

    try {
      final cart = await getCart();

      emit(
        CartState.success(cart),
      );
    } catch (e) {
      emit(
        CartState.error(
          e.toString(),
        ),
      );
    }
  }


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

      emit(
        const CartState.addedToCart(),
      );

      await fetchCart();
    } catch (e) {
      emit(
        CartState.error(
          e.toString(),
        ),
      );
    }
  }



  Future<void> deleteProductFromCart({
    required String itemId,
  }) async {
    try {
      emit(
        const CartState.loading(),
      );

      await deleteCartItem(itemId);

      emit(
        const CartState.deletedFromCart(),
      );

      await fetchCart();
    } catch (e) {
      emit(
        CartState.error(
          e.toString(),
        ),
      );
    }
  }
}