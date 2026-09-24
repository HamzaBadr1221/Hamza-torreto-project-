import 'package:dio/dio.dart';
import '../models/add_to_cart_request.dart';
import '../models/cart_model.dart';

class CartRemoteDataSource {
  final Dio dio;

  CartRemoteDataSource(this.dio);


  Future<CartModel> getCart() async {
    final response = await dio.get('/api/cart');

    return CartModel.fromJson(response.data);
  }


  Future<void> addToCart(
      AddToCartRequest request,
      ) async {
    await dio.post(
      '/api/cart/items',
      data: request.toJson(),
    );
  }


Future<void> deleteCartItem(
String itemId,
) async {
  try {
    print('================================');
    print('DELETE CART ITEM');
    print('item id: $itemId');
    print('path: /api/cart/items/$itemId');

    await dio.delete(
      '/api/cart/items/$itemId',
      data: {
        'itemId': itemId,
      },
    );

    print('DELETE SUCCESS');
  } on DioException catch (e) {
    print('================================');
    print('DELETE ERROR');
    print('STATUS: ${e.response?.statusCode}');
    print('DATA: ${e.response?.data}');
    print('MESSAGE: ${e.message}');
    print('================================');

    rethrow;
  }
}
  }
