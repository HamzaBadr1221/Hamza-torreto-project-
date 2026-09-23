// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_to_cart_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddToCartRequest {

 String get productId; int get quantity;
/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddToCartRequestCopyWith<AddToCartRequest> get copyWith => _$AddToCartRequestCopyWithImpl<AddToCartRequest>(this as AddToCartRequest, _$identity);

  /// Serializes this AddToCartRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AddToCartRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddToCartRequest&&(identical(other.productId, _this.productId) || other.productId == _this.productId)&&(identical(other.quantity, _this.quantity) || other.quantity == _this.quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AddToCartRequest;
  return Object.hash(runtimeType,_this.productId,_this.quantity);
}

@override
String toString() {
  final _this = this as AddToCartRequest;
  return 'AddToCartRequest(productId: ${_this.productId}, quantity: ${_this.quantity})';
}


}

/// @nodoc
abstract mixin class $AddToCartRequestCopyWith<$Res>  {
  factory $AddToCartRequestCopyWith(AddToCartRequest value, $Res Function(AddToCartRequest) _then) = _$AddToCartRequestCopyWithImpl;
@useResult
$Res call({
 String productId, int quantity
});




}
/// @nodoc
class _$AddToCartRequestCopyWithImpl<$Res>
    implements $AddToCartRequestCopyWith<$Res> {
  _$AddToCartRequestCopyWithImpl(this._self, this._then);

  final AddToCartRequest _self;
  final $Res Function(AddToCartRequest) _then;

/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(AddToCartRequest(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [AddToCartRequest].
extension AddToCartRequestPatterns on AddToCartRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AddToCartRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddToCartRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AddToCartRequest value)  $default,){
final _that = this;
switch (_that) {
case _AddToCartRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AddToCartRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AddToCartRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String productId,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddToCartRequest() when $default != null:
return $default(_that.productId,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String productId,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _AddToCartRequest():
return $default(_that.productId,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String productId,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _AddToCartRequest() when $default != null:
return $default(_that.productId,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AddToCartRequest implements AddToCartRequest {
  const _AddToCartRequest({required this.productId, required this.quantity});
  factory _AddToCartRequest.fromJson(Map<String, dynamic> json) => _$AddToCartRequestFromJson(json);

@override final  String productId;
@override final  int quantity;

/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddToCartRequestCopyWith<_AddToCartRequest> get copyWith => __$AddToCartRequestCopyWithImpl<_AddToCartRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddToCartRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddToCartRequest&&(identical(other.productId, productId) || other.productId == productId)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,productId,quantity);
}

@override
String toString() {
    return 'AddToCartRequest(productId: $productId, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$AddToCartRequestCopyWith<$Res> implements $AddToCartRequestCopyWith<$Res> {
  factory _$AddToCartRequestCopyWith(_AddToCartRequest value, $Res Function(_AddToCartRequest) _then) = __$AddToCartRequestCopyWithImpl;
@override @useResult
$Res call({
 String productId, int quantity
});




}
/// @nodoc
class __$AddToCartRequestCopyWithImpl<$Res>
    implements _$AddToCartRequestCopyWith<$Res> {
  __$AddToCartRequestCopyWithImpl(this._self, this._then);

  final _AddToCartRequest _self;
  final $Res Function(_AddToCartRequest) _then;

/// Create a copy of AddToCartRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? productId = null,Object? quantity = null,}) {
  return _then(_AddToCartRequest(
productId: null == productId ? _self.productId : productId // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
