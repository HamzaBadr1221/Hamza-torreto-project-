import 'package:dio/dio.dart';

import '../../../../core/network/api_constants.dart';
import '../models/paged_products.dart';
import '../models/product.dart';

class ProductRemoteDataSource {
  final Dio dio;

  ProductRemoteDataSource(this.dio);

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
  }) async {
    try {
      final response = await dio.get(
        ApiConstants.products,
        data: {
          'searchTerm': searchTerm,
          'category': category,
          'minPrice': minPrice,
          'maxPrice': maxPrice,
          'isInStock': isInStock,
          'sortBy': sortBy,
          'sortOrder': sortOrder,
          'page': page,
          'pageSize': pageSize,
        },
      );

      print('========== PRODUCTS ==========');
      print('STATUS: ${response.statusCode}');
      print('DATA: ${response.data}');
      print('==============================');

      final products = PagedProducts.fromJson(response.data);

      print('PARSED PRODUCTS: ${products.items.length}');

      return products;
    } on DioException catch (e) {
      print('========== PRODUCT ERROR ==========');
      print('TYPE: ${e.type}');
      print('MESSAGE: ${e.message}');
      print('ERROR: ${e.error}');
      print('STATUS: ${e.response?.statusCode}');
      print('DATA: ${e.response?.data}');
      print('URL: ${e.requestOptions.uri}');
      print('===================================');

      rethrow;
    }
  }

  Future<Product> getProductDetails(String id) async {
    try {
      final response = await dio.get(
        ApiConstants.productDetails(id),
      );

      print('========== PRODUCT DETAILS ==========');
      print('STATUS: ${response.statusCode}');
      print('DATA: ${response.data}');
      print('URL: ${response.requestOptions.uri}');
      print('=====================================');

      // Details API بيرجع أسماء مختلفة للـ Arabic fields
      final data = Map<String, dynamic>.from(response.data);

      data['arabicName'] =
          data['arabicName'] ?? data['nameArabic'];

      data['arabicDescription'] =
          data['arabicDescription'] ?? data['descriptionArabic'];

      final product = Product.fromJson(data);

      print('PARSED PRODUCT DETAILS: ${product.name}');

      return product;
    } on DioException catch (e) {
      print('========== PRODUCT DETAILS ERROR ==========');
      print('TYPE: ${e.type}');
      print('MESSAGE: ${e.message}');
      print('ERROR: ${e.error}');
      print('STATUS: ${e.response?.statusCode}');
      print('DATA: ${e.response?.data}');
      print('URL: ${e.requestOptions.uri}');
      print('===========================================');

      rethrow;
    } catch (e) {
      print('========== PRODUCT DETAILS PARSING ERROR ==========');
      print('ERROR: $e');
      print('====================================================');

      rethrow;
    }
  }
}