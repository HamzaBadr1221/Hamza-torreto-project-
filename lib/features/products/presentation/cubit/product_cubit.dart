import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_product_details.dart';
import '../../domain/usecases/get_product.dart';
import 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  final GetProducts getProducts;
  final GetProductDetails getProductDetails;

  ProductCubit({
    required this.getProducts,
    required this.getProductDetails,
  }) : super(const ProductState.initial());

  Future<void> fetchProducts({
    String? searchTerm,
    String? category,
    int? minPrice,
    int? maxPrice,
    bool? isInStock,
    String? sortBy,
    String? sortOrder,
    int page = 1,
    int pageSize = 10,
  }) async {
    emit(const ProductState.loading());

    try {
      final products = await getProducts(
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

      emit(ProductState.productsSuccess(products));
    } catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }

  Future<void> fetchProductDetails(String id) async {
    emit(const ProductState.loading());

    try {
      final product = await getProductDetails(id);

      emit(ProductState.productDetailsSuccess(product));
    } catch (e) {
      emit(ProductState.error(e.toString()));
    }
  }
}