import '../../domain/repositories/product_repository.dart';
import '../datasources/product_remote_data_source.dart';
import '../models/paged_products.dart';
import '../models/product.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  ProductRepositoryImpl(this.remoteDataSource);

  @override
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
  }) {
    return remoteDataSource.getProducts(
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

  @override
  Future<Product> getProductDetails(String id) {
    return remoteDataSource.getProductDetails(id);
  }
}