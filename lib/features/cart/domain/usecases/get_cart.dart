import '../repositories/cart_repository.dart';
import '../../data/models/cart_model.dart';

class GetCart {
  final CartRepository repository;

  GetCart(this.repository);

  Future<CartModel> call() async {
    return await repository.getCart();
  }
}