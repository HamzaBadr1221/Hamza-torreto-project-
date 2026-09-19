import '../../data/models/paged_products.dart';
import '../repositories/product_repository.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<PagedProducts> call({
    String? searchTerm,
    String? category,
    int? minPrice,
    int? maxPrice,
    bool? isInStock,
    String? sortBy,
    String? sortOrder,
    int page = 1,
    int pageSize = 10,
  }) {
    return repository.getProducts(
      searchTerm: searchTerm,
      category: category,
      minPrice: minPrice,
      maxPrice: maxPrice,
      isInStock: isInStock,
      sortBy: sortBy,
      sortOrder: sortOrder,
      page: page,
      pageSize: pageSize,
    );
  }
}