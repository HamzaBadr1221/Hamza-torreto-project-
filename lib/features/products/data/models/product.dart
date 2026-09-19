import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({
    required String id,
    required String productCode,
    required String name,
    required String description,
    required String arabicName,
    required String arabicDescription,
    required String coverPictureUrl,
    List<String>? productPictures,
    required double price,
    required int stock,
    required double weight,
    required String color,
    required double rating,
    required int reviewsCount,
    required int discountPercentage,
    required String sellerId,
    required List<String> categories,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}