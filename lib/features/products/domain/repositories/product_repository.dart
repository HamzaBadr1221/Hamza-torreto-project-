import '../../data/models/paged_products.dart';
import '../../data/models/product.dart';

abstract class ProductRepository {
  Future<PagedProducts> getProducts({
    String? searchTerm,
    String? category,
    int? minPrice,
    int? maxPrice,
    bool? isInStock,
    String? sortBy,
    String? sortOrder,
    int page = 1,
    int pageSize = 10,
  });

  Future<Product> getProductDetails(String id);
}