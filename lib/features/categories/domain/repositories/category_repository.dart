import '../../data/models/categories_response.dart';

abstract class CategoryRepository {
  Future<CategoriesResponse>getCategories(String token);
}
