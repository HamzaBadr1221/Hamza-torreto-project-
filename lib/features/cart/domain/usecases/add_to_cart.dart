import '../repositories/cart_repository.dart';
import '../../data/models/add_to_cart_request.dart';

class AddToCart {
  final CartRepository repository;

  AddToCart(this.repository);

  Future<void> call(
      AddToCartRequest request,
      ) async {
    return await repository.addToCart(request);
  }
}