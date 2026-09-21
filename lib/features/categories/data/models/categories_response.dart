import 'package:freezed_annotation/freezed_annotation.dart';
import 'category_model.dart';

part 'categories_response.freezed.dart';
part 'categories_response.g.dart';

@freezed
abstract class CategoriesResponse with _$CategoriesResponse{
  const factory CategoriesResponse({
    required List<CategoryModel> categories,
  }) = _CategoriesResponse;

  factory CategoriesResponse.fromJson(Map<String,dynamic>json) =>
      _$CategoriesResponseFromJson(json);
}