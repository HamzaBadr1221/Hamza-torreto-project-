import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/categories_response.dart';

part 'category_state.freezed.dart';

@freezed
abstract class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;

  const factory CategoryState.loading() = _Loading;

  const factory CategoryState.success(
      CategoriesResponse categories,
      ) = _Success;

  const factory CategoryState.error(
      String message,
      ) = _Error;
}