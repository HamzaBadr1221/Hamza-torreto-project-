import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/paged_products.dart';
import '../../data/models/product.dart';

part 'product_state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;

  const factory ProductState.loading() = _Loading;

  const factory ProductState.productsSuccess(
      PagedProducts products,
      ) = _ProductsSuccess;

  const factory ProductState.productDetailsSuccess(
      Product product,
      ) = _ProductDetailsSuccess;

  const factory ProductState.error(
      String message,
      ) = _Error;
}