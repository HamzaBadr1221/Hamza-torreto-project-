import 'package:dio/dio.dart';

import '../../../../core/network/api_constants.dart';
import '../models/categories_response.dart';

class CategoryRemoteDataSource {
  final Dio dio;

  CategoryRemoteDataSource(this.dio);

  Future<CategoriesResponse> getCategories(String token) async {
    try {
      final response = await dio.get(
        ApiConstants.categories,
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      print('========== CATEGORIES ==========');
      print('STATUS: ${response.statusCode}');
      print('DATA: ${response.data}');
      print('================================');

      return CategoriesResponse.fromJson(response.data);
    } on DioException catch (e) {
      print('========== CATEGORIES ERROR ==========');
      print('TYPE: ${e.type}');
      print('MESSAGE: ${e.message}');
      print('ERROR: ${e.error}');
      print('STATUS: ${e.response?.statusCode}');
      print('DATA: ${e.response?.data}');
      print('URL: ${e.requestOptions.uri}');
      print('======================================');

      rethrow;
    }
  }
}