import '../../domain/repositories/cart_repository.dart';

class DeleteCartItem {
  final CartRepository repository;

  DeleteCartItem(this.repository);

  Future<void> call(
      String itemId,
      ) async {
    await repository.deleteCartItem(itemId);
  }
}