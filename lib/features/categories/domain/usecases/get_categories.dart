import '../../data/models/categories_response.dart';
import '../repositories/category_repository.dart';

class GetCategories {
  final CategoryRepository repository;

  GetCategories(this.repository);

  Future<CategoriesResponse> call(String token) {
    return repository.getCategories(token);
  }
}