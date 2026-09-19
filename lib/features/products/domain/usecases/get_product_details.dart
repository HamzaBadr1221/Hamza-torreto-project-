import '../../data/models/product.dart';
import '../repositories/product_repository.dart';

class GetProductDetails {
  final ProductRepository repository;

  GetProductDetails(this.repository);

  Future<Product> call(String id) {
    return repository.getProductDetails(id);
  }
}