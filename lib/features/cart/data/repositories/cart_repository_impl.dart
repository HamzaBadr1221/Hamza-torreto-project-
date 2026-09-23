import '../../domain/repositories/cart_repository.dart';
import '../datasources/cart_remote_data_source.dart';
import '../models/add_to_cart_request.dart';
import '../models/cart_model.dart';

class CartRepositoryImpl implements CartRepository {
  final CartRemoteDataSource remoteDataSource;

  CartRepositoryImpl(this.remoteDataSource);

  @override
  Future<CartModel> getCart() async {
    return await remoteDataSource.getCart();
  }

  @override
  Future<void> addToCart(
      AddToCartRequest request,
      ) async {
    return await remoteDataSource.addToCart(request);
  }
}