// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Product {

 String get id; String get productCode; String get name; String get description; String get arabicName; String get arabicDescription; String get coverPictureUrl; List<String>? get productPictures; double get price; int get stock; double get weight; String get color; double get rating; int get reviewsCount; int get discountPercentage; String get sellerId; List<String> get categories;
/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCopyWith<Product> get copyWith => _$ProductCopyWithImpl<Product>(this as Product, _$identity);

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Product;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Product&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.productCode, _this.productCode) || other.productCode == _this.productCode)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.arabicName, _this.arabicName) || other.arabicName == _this.arabicName)&&(identical(other.arabicDescription, _this.arabicDescription) || other.arabicDescription == _this.arabicDescription)&&(identical(other.coverPictureUrl, _this.coverPictureUrl) || other.coverPictureUrl == _this.coverPictureUrl)&&const DeepCollectionEquality().equals(other.productPictures, _this.productPictures)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.stock, _this.stock) || other.stock == _this.stock)&&(identical(other.weight, _this.weight) || other.weight == _this.weight)&&(identical(other.color, _this.color) || other.color == _this.color)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.reviewsCount, _this.reviewsCount) || other.reviewsCount == _this.reviewsCount)&&(identical(other.discountPercentage, _this.discountPercentage) || other.discountPercentage == _this.discountPercentage)&&(identical(other.sellerId, _this.sellerId) || other.sellerId == _this.sellerId)&&const DeepCollectionEquality().equals(other.categories, _this.categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Product;
  return Object.hash(runtimeType,_this.id,_this.productCode,_this.name,_this.description,_this.arabicName,_this.arabicDescription,_this.coverPictureUrl,const DeepCollectionEquality().hash(_this.productPictures),_this.price,_this.stock,_this.weight,_this.color,_this.rating,_this.reviewsCount,_this.discountPercentage,_this.sellerId,const DeepCollectionEquality().hash(_this.categories));
}

@override
String toString() {
  final _this = this as Product;
  return 'Product(id: ${_this.id}, productCode: ${_this.productCode}, name: ${_this.name}, description: ${_this.description}, arabicName: ${_this.arabicName}, arabicDescription: ${_this.arabicDescription}, coverPictureUrl: ${_this.coverPictureUrl}, productPictures: ${_this.productPictures}, price: ${_this.price}, stock: ${_this.stock}, weight: ${_this.weight}, color: ${_this.color}, rating: ${_this.rating}, reviewsCount: ${_this.reviewsCount}, discountPercentage: ${_this.discountPercentage}, sellerId: ${_this.sellerId}, categories: ${_this.categories})';
}


}

/// @nodoc
abstract mixin class $ProductCopyWith<$Res>  {
  factory $ProductCopyWith(Product value, $Res Function(Product) _then) = _$ProductCopyWithImpl;
@useResult
$Res call({
 String id, String productCode, String name, String description, String arabicName, String arabicDescription, String coverPictureUrl, List<String>? productPictures, double price, int stock, double weight, String color, double rating, int reviewsCount, int discountPercentage, String sellerId, List<String> categories
});




}
/// @nodoc
class _$ProductCopyWithImpl<$Res>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._self, this._then);

  final Product _self;
  final $Res Function(Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? description = null,Object? arabicName = null,Object? arabicDescription = null,Object? coverPictureUrl = null,Object? productPictures = freezed,Object? price = null,Object? stock = null,Object? weight = null,Object? color = null,Object? rating = null,Object? reviewsCount = null,Object? discountPercentage = null,Object? sellerId = null,Object? categories = null,}) {
  return _then(Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,arabicName: null == arabicName ? _self.arabicName : arabicName // ignore: cast_nullable_to_non_nullable
as String,arabicDescription: null == arabicDescription ? _self.arabicDescription : arabicDescription // ignore: cast_nullable_to_non_nullable
as String,coverPictureUrl: null == coverPictureUrl ? _self.coverPictureUrl : coverPictureUrl // ignore: cast_nullable_to_non_nullable
as String,productPictures: freezed == productPictures ? _self.productPictures : productPictures // ignore: cast_nullable_to_non_nullable
as List<String>?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Product].
extension ProductPatterns on Product {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Product value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Product value)  $default,){
final _that = this;
switch (_that) {
case _Product():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Product value)?  $default,){
final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String productCode,  String name,  String description,  String arabicName,  String arabicDescription,  String coverPictureUrl,  List<String>? productPictures,  double price,  int stock,  double weight,  String color,  double rating,  int reviewsCount,  int discountPercentage,  String sellerId,  List<String> categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.productPictures,_that.price,_that.stock,_that.weight,_that.color,_that.rating,_that.reviewsCount,_that.discountPercentage,_that.sellerId,_that.categories);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String productCode,  String name,  String description,  String arabicName,  String arabicDescription,  String coverPictureUrl,  List<String>? productPictures,  double price,  int stock,  double weight,  String color,  double rating,  int reviewsCount,  int discountPercentage,  String sellerId,  List<String> categories)  $default,) {final _that = this;
switch (_that) {
case _Product():
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.productPictures,_that.price,_that.stock,_that.weight,_that.color,_that.rating,_that.reviewsCount,_that.discountPercentage,_that.sellerId,_that.categories);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String productCode,  String name,  String description,  String arabicName,  String arabicDescription,  String coverPictureUrl,  List<String>? productPictures,  double price,  int stock,  double weight,  String color,  double rating,  int reviewsCount,  int discountPercentage,  String sellerId,  List<String> categories)?  $default,) {final _that = this;
switch (_that) {
case _Product() when $default != null:
return $default(_that.id,_that.productCode,_that.name,_that.description,_that.arabicName,_that.arabicDescription,_that.coverPictureUrl,_that.productPictures,_that.price,_that.stock,_that.weight,_that.color,_that.rating,_that.reviewsCount,_that.discountPercentage,_that.sellerId,_that.categories);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Product implements Product {
  const _Product({required this.id, required this.productCode, required this.name, required this.description, required this.arabicName, required this.arabicDescription, required this.coverPictureUrl,  List<String>? productPictures, required this.price, required this.stock, required this.weight, required this.color, required this.rating, required this.reviewsCount, required this.discountPercentage, required this.sellerId, required  List<String> categories}): _productPictures = productPictures,_categories = categories;
  factory _Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

@override final  String id;
@override final  String productCode;
@override final  String name;
@override final  String description;
@override final  String arabicName;
@override final  String arabicDescription;
@override final  String coverPictureUrl;
 final  List<String>? _productPictures;
@override List<String>? get productPictures {
  final value = _productPictures;
  if (value == null) return null;
  if (_productPictures is EqualUnmodifiableListView) return _productPictures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double price;
@override final  int stock;
@override final  double weight;
@override final  String color;
@override final  double rating;
@override final  int reviewsCount;
@override final  int discountPercentage;
@override final  String sellerId;
 final  List<String> _categories;
@override List<String> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCopyWith<_Product> get copyWith => __$ProductCopyWithImpl<_Product>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Product&&(identical(other.id, id) || other.id == id)&&(identical(other.productCode, productCode) || other.productCode == productCode)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.arabicName, arabicName) || other.arabicName == arabicName)&&(identical(other.arabicDescription, arabicDescription) || other.arabicDescription == arabicDescription)&&(identical(other.coverPictureUrl, coverPictureUrl) || other.coverPictureUrl == coverPictureUrl)&&const DeepCollectionEquality().equals(other.productPictures, _productPictures)&&(identical(other.price, price) || other.price == price)&&(identical(other.stock, stock) || other.stock == stock)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.color, color) || other.color == color)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.reviewsCount, reviewsCount) || other.reviewsCount == reviewsCount)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.sellerId, sellerId) || other.sellerId == sellerId)&&const DeepCollectionEquality().equals(other.categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,productCode,name,description,arabicName,arabicDescription,coverPictureUrl,const DeepCollectionEquality().hash(_productPictures),price,stock,weight,color,rating,reviewsCount,discountPercentage,sellerId,const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'Product(id: $id, productCode: $productCode, name: $name, description: $description, arabicName: $arabicName, arabicDescription: $arabicDescription, coverPictureUrl: $coverPictureUrl, productPictures: $productPictures, price: $price, stock: $stock, weight: $weight, color: $color, rating: $rating, reviewsCount: $reviewsCount, discountPercentage: $discountPercentage, sellerId: $sellerId, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) _then) = __$ProductCopyWithImpl;
@override @useResult
$Res call({
 String id, String productCode, String name, String description, String arabicName, String arabicDescription, String coverPictureUrl, List<String>? productPictures, double price, int stock, double weight, String color, double rating, int reviewsCount, int discountPercentage, String sellerId, List<String> categories
});




}
/// @nodoc
class __$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(this._self, this._then);

  final _Product _self;
  final $Res Function(_Product) _then;

/// Create a copy of Product
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? productCode = null,Object? name = null,Object? description = null,Object? arabicName = null,Object? arabicDescription = null,Object? coverPictureUrl = null,Object? productPictures = freezed,Object? price = null,Object? stock = null,Object? weight = null,Object? color = null,Object? rating = null,Object? reviewsCount = null,Object? discountPercentage = null,Object? sellerId = null,Object? categories = null,}) {
  return _then(_Product(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,productCode: null == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,arabicName: null == arabicName ? _self.arabicName : arabicName // ignore: cast_nullable_to_non_nullable
as String,arabicDescription: null == arabicDescription ? _self.arabicDescription : arabicDescription // ignore: cast_nullable_to_non_nullable
as String,coverPictureUrl: null == coverPictureUrl ? _self.coverPictureUrl : coverPictureUrl // ignore: cast_nullable_to_non_nullable
as String,productPictures: freezed == productPictures ? _self._productPictures : productPictures // ignore: cast_nullable_to_non_nullable
as List<String>?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,reviewsCount: null == reviewsCount ? _self.reviewsCount : reviewsCount // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as int,sellerId: null == sellerId ? _self.sellerId : sellerId // ignore: cast_nullable_to_non_nullable
as String,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
