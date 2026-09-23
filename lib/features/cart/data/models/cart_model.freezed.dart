// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartModel {

 String get cartId; List<CartItemModel> get cartItems;
/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartModelCopyWith<CartModel> get copyWith => _$CartModelCopyWithImpl<CartModel>(this as CartModel, _$identity);

  /// Serializes this CartModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartModel&&(identical(other.cartId, _this.cartId) || other.cartId == _this.cartId)&&const DeepCollectionEquality().equals(other.cartItems, _this.cartItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartModel;
  return Object.hash(runtimeType,_this.cartId,const DeepCollectionEquality().hash(_this.cartItems));
}

@override
String toString() {
  final _this = this as CartModel;
  return 'CartModel(cartId: ${_this.cartId}, cartItems: ${_this.cartItems})';
}


}

/// @nodoc
abstract mixin class $CartModelCopyWith<$Res>  {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) _then) = _$CartModelCopyWithImpl;
@useResult
$Res call({
 String cartId, List<CartItemModel> cartItems
});




}
/// @nodoc
class _$CartModelCopyWithImpl<$Res>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._self, this._then);

  final CartModel _self;
  final $Res Function(CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cartId = null,Object? cartItems = null,}) {
  return _then(CartModel(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as String,cartItems: null == cartItems ? _self.cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [CartModel].
extension CartModelPatterns on CartModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartModel value)  $default,){
final _that = this;
switch (_that) {
case _CartModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String cartId,  List<CartItemModel> cartItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.cartId,_that.cartItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String cartId,  List<CartItemModel> cartItems)  $default,) {final _that = this;
switch (_that) {
case _CartModel():
return $default(_that.cartId,_that.cartItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String cartId,  List<CartItemModel> cartItems)?  $default,) {final _that = this;
switch (_that) {
case _CartModel() when $default != null:
return $default(_that.cartId,_that.cartItems);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartModel implements CartModel {
  const _CartModel({required this.cartId, required  List<CartItemModel> cartItems}): _cartItems = cartItems;
  factory _CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);

@override final  String cartId;
 final  List<CartItemModel> _cartItems;
@override List<CartItemModel> get cartItems {
  if (_cartItems is EqualUnmodifiableListView) return _cartItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cartItems);
}


/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartModelCopyWith<_CartModel> get copyWith => __$CartModelCopyWithImpl<_CartModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartModel&&(identical(other.cartId, cartId) || other.cartId == cartId)&&const DeepCollectionEquality().equals(other.cartItems, _cartItems));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,cartId,const DeepCollectionEquality().hash(_cartItems));
}

@override
String toString() {
    return 'CartModel(cartId: $cartId, cartItems: $cartItems)';
}


}

/// @nodoc
abstract mixin class _$CartModelCopyWith<$Res> implements $CartModelCopyWith<$Res> {
  factory _$CartModelCopyWith(_CartModel value, $Res Function(_CartModel) _then) = __$CartModelCopyWithImpl;
@override @useResult
$Res call({
 String cartId, List<CartItemModel> cartItems
});




}
/// @nodoc
class __$CartModelCopyWithImpl<$Res>
    implements _$CartModelCopyWith<$Res> {
  __$CartModelCopyWithImpl(this._self, this._then);

  final _CartModel _self;
  final $Res Function(_CartModel) _then;

/// Create a copy of CartModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cartId = null,Object? cartItems = null,}) {
  return _then(_CartModel(
cartId: null == cartId ? _self.cartId : cartId // ignore: cast_nullable_to_non_nullable
as String,cartItems: null == cartItems ? _self._cartItems : cartItems // ignore: cast_nullable_to_non_nullable
as List<CartItemModel>,
  ));
}


}


/// @nodoc
mixin _$CartItemModel {

 String get itemId; String get productId; String get productName; String get productCoverUrl; int get productStock; double get weightInGrams; int get quantity; double get discountPercentage; double get basePricePerUnit; double get finalPricePerUnit; double get totalPrice;
/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemModelCopyWith<CartItemModel> get copyWith => _$CartItemModelCopyWithImpl<CartItemModel>(this as CartItemModel, _$identity);

  /// Serializes this CartItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CartItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemModel&&(identical(other.itemId, _this.itemId) || other.itemId == _this.itemId)&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.productName, _this.productName) || other.productName == _this.productName)&&(identical(other.productCoverUrl, _this.productCoverUrl) || other.productCoverUrl == _this.productCoverUrl)&&(identical(other.productStock, _this.productStock) || other.productStock == _this.productStock)&&(identical(other.weightInGrams, _this.weightInGrams) || other.weightInGrams == _this.weightInGrams)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity)&&(identical(other.discountPercentage, _this.discountPercentage) || other.discountPercentage == _this.discountPercentage)&&(identical(other.basePricePerUnit, _this.basePricePerUnit) || other.basePricePerUnit == _this.basePricePerUnit)&&(identical(other.finalPricePerUnit, _this.finalPricePerUnit) || other.finalPricePerUnit == _this.finalPricePerUnit)&&(identical(other.totalPrice, _this.totalPrice) || other.totalPrice == _this.totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CartItemModel;
  return Object.hash(runtimeType,_this.itemId,_this.productId,_this.productName,_this.productCoverUrl,_this.productStock,_this.weightInGrams,_this.quantity,_this.discountPercentage,_this.basePricePerUnit,_this.finalPricePerUnit,_this.totalPrice);
}

@override
String toString() {
  final _this = this as CartItemModel;
  return 'CartItemModel(itemId: ${_this.itemId}, productId: ${_this.productId}, productName: ${_this.productName}, productCoverUrl: ${_this.productCoverUrl}, productStock: ${_this.productStock}, weightInGrams: ${_this.weightInGrams}, quantity: ${_this.quantity}, discountPercentage: ${_this.discountPercentage}, basePricePerUnit: ${_this.basePricePerUnit}, finalPricePerUnit: ${_this.finalPricePerUnit}, totalPrice: ${_this.totalPrice})';
}


}

/// @nodoc
abstract mixin class $CartItemModelCopyWith<$Res>  {
  factory $CartItemModelCopyWith(CartItemModel value, $Res Function(CartItemModel) _then) = _$CartItemModelCopyWithImpl;
@useResult
$Res call({
 String itemId, String productId, String productName, String productCoverUrl, int productStock, double weightInGrams, int quantity, double discountPercentage, double basePricePerUnit, double finalPricePerUnit, double totalPrice
});




}
/// @nodoc
class _$CartItemModelCopyWithImpl<$Res>
    implements $CartItemModelCopyWith<$Res> {
  _$CartItemModelCopyWithImpl(this._self, this._then);

  final CartItemModel _self;
  final $Res Function(CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? itemId = null,Object? productId = null,Object? productName = null,Object? productCoverUrl = null,Object? productStock = null,Object? weightInGrams = null,Object? quantity = null,Object? discountPercentage = null,Object? basePricePerUnit = null,Object? finalPricePerUnit = null,Object? totalPrice = null,}) {
  return _then(CartItemModel(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productCoverUrl: null == productCoverUrl ? _self.productCoverUrl : productCoverUrl // ignore: cast_nullable_to_non_nullable
as String,productStock: null == productStock ? _self.productStock : productStock // ignore: cast_nullable_to_non_nullable
as int,weightInGrams: null == weightInGrams ? _self.weightInGrams : weightInGrams // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,basePricePerUnit: null == basePricePerUnit ? _self.basePricePerUnit : basePricePerUnit // ignore: cast_nullable_to_non_nullable
as double,finalPricePerUnit: null == finalPricePerUnit ? _self.finalPricePerUnit : finalPricePerUnit // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemModel].
extension CartItemModelPatterns on CartItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemModel value)  $default,){
final _that = this;
switch (_that) {
case _CartItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String itemId,  String productId,  String productName,  String productCoverUrl,  int productStock,  double weightInGrams,  int quantity,  double discountPercentage,  double basePricePerUnit,  double finalPricePerUnit,  double totalPrice)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.itemId,_that.productId,_that.productName,_that.productCoverUrl,_that.productStock,_that.weightInGrams,_that.quantity,_that.discountPercentage,_that.basePricePerUnit,_that.finalPricePerUnit,_that.totalPrice);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String itemId,  String productId,  String productName,  String productCoverUrl,  int productStock,  double weightInGrams,  int quantity,  double discountPercentage,  double basePricePerUnit,  double finalPricePerUnit,  double totalPrice)  $default,) {final _that = this;
switch (_that) {
case _CartItemModel():
return $default(_that.itemId,_that.productId,_that.productName,_that.productCoverUrl,_that.productStock,_that.weightInGrams,_that.quantity,_that.discountPercentage,_that.basePricePerUnit,_that.finalPricePerUnit,_that.totalPrice);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String itemId,  String productId,  String productName,  String productCoverUrl,  int productStock,  double weightInGrams,  int quantity,  double discountPercentage,  double basePricePerUnit,  double finalPricePerUnit,  double totalPrice)?  $default,) {final _that = this;
switch (_that) {
case _CartItemModel() when $default != null:
return $default(_that.itemId,_that.productId,_that.productName,_that.productCoverUrl,_that.productStock,_that.weightInGrams,_that.quantity,_that.discountPercentage,_that.basePricePerUnit,_that.finalPricePerUnit,_that.totalPrice);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemModel implements CartItemModel {
  const _CartItemModel({required this.itemId, required this.productId, required this.productName, required this.productCoverUrl, required this.productStock, required this.weightInGrams, required this.quantity, required this.discountPercentage, required this.basePricePerUnit, required this.finalPricePerUnit, required this.totalPrice});
  factory _CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

@override final  String itemId;
@override final  String productId;
@override final  String productName;
@override final  String productCoverUrl;
@override final  int productStock;
@override final  double weightInGrams;
@override final  int quantity;
@override final  double discountPercentage;
@override final  double basePricePerUnit;
@override final  double finalPricePerUnit;
@override final  double totalPrice;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemModelCopyWith<_CartItemModel> get copyWith => __$CartItemModelCopyWithImpl<_CartItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemModel&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.productName, productName) || other.productName == productName)&&(identical(other.productCoverUrl, productCoverUrl) || other.productCoverUrl == productCoverUrl)&&(identical(other.productStock, productStock) || other.productStock == productStock)&&(identical(other.weightInGrams, weightInGrams) || other.weightInGrams == weightInGrams)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.discountPercentage, discountPercentage) || other.discountPercentage == discountPercentage)&&(identical(other.basePricePerUnit, basePricePerUnit) || other.basePricePerUnit == basePricePerUnit)&&(identical(other.finalPricePerUnit, finalPricePerUnit) || other.finalPricePerUnit == finalPricePerUnit)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,itemId,productId,productName,productCoverUrl,productStock,weightInGrams,quantity,discountPercentage,basePricePerUnit,finalPricePerUnit,totalPrice);
}

@override
String toString() {
    return 'CartItemModel(itemId: $itemId, productId: $productId, productName: $productName, productCoverUrl: $productCoverUrl, productStock: $productStock, weightInGrams: $weightInGrams, quantity: $quantity, discountPercentage: $discountPercentage, basePricePerUnit: $basePricePerUnit, finalPricePerUnit: $finalPricePerUnit, totalPrice: $totalPrice)';
}


}

/// @nodoc
abstract mixin class _$CartItemModelCopyWith<$Res> implements $CartItemModelCopyWith<$Res> {
  factory _$CartItemModelCopyWith(_CartItemModel value, $Res Function(_CartItemModel) _then) = __$CartItemModelCopyWithImpl;
@override @useResult
$Res call({
 String itemId, String productId, String productName, String productCoverUrl, int productStock, double weightInGrams, int quantity, double discountPercentage, double basePricePerUnit, double finalPricePerUnit, double totalPrice
});




}
/// @nodoc
class __$CartItemModelCopyWithImpl<$Res>
    implements _$CartItemModelCopyWith<$Res> {
  __$CartItemModelCopyWithImpl(this._self, this._then);

  final _CartItemModel _self;
  final $Res Function(_CartItemModel) _then;

/// Create a copy of CartItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? itemId = null,Object? productId = null,Object? productName = null,Object? productCoverUrl = null,Object? productStock = null,Object? weightInGrams = null,Object? quantity = null,Object? discountPercentage = null,Object? basePricePerUnit = null,Object? finalPricePerUnit = null,Object? totalPrice = null,}) {
  return _then(_CartItemModel(
itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,productName: null == productName ? _self.productName : productName // ignore: cast_nullable_to_non_nullable
as String,productCoverUrl: null == productCoverUrl ? _self.productCoverUrl : productCoverUrl // ignore: cast_nullable_to_non_nullable
as String,productStock: null == productStock ? _self.productStock : productStock // ignore: cast_nullable_to_non_nullable
as int,weightInGrams: null == weightInGrams ? _self.weightInGrams : weightInGrams // ignore: cast_nullable_to_non_nullable
as double,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,discountPercentage: null == discountPercentage ? _self.discountPercentage : discountPercentage // ignore: cast_nullable_to_non_nullable
as double,basePricePerUnit: null == basePricePerUnit ? _self.basePricePerUnit : basePricePerUnit // ignore: cast_nullable_to_non_nullable
as double,finalPricePerUnit: null == finalPricePerUnit ? _self.finalPricePerUnit : finalPricePerUnit // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
