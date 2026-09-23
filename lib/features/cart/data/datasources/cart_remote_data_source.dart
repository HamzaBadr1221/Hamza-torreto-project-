import 'package:dio/dio.dart';

import '../models/add_to_cart_request.dart';
import '../models/cart_model.dart';

class CartRemoteDataSource {
  final Dio dio;

  CartRemoteDataSource(this.dio);

  // ================= GET CART =================

  Future<CartModel> getCart() async {
    final response = await dio.get(
      '/api/cart',
    );

    return CartModel.fromJson(response.data);
  }

  // ================= ADD TO CART =================

  Future<void> addToCart(
      AddToCartRequest request,
      ) async {
    await dio.post(
      '/api/cart/items',
      data: request.toJson(),
    );
  }
}