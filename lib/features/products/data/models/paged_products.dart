import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'paged_products.freezed.dart';
part 'paged_products.g.dart';

@freezed
abstract class PagedProducts with _$PagedProducts {
  const factory PagedProducts({
    required List<Product> items,
    required int page,
    required int pageSize,
    required int totalCount,
    required bool hasNextPage,
    required bool hasPreviousPage,
  }) = _PagedProducts;

  factory PagedProducts.fromJson(Map<String, dynamic> json) =>
      _$PagedProductsFromJson(json);
}