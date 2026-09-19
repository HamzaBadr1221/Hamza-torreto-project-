// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paged_products.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PagedProducts {

 List<Product> get items; int get page; int get pageSize; int get totalCount; bool get hasNextPage; bool get hasPreviousPage;
/// Create a copy of PagedProducts
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PagedProductsCopyWith<PagedProducts> get copyWith => _$PagedProductsCopyWithImpl<PagedProducts>(this as PagedProducts, _$identity);

  /// Serializes this PagedProducts to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PagedProducts;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PagedProducts&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.pageSize, _this.pageSize) || other.pageSize == _this.pageSize)&&(identical(other.totalCount, _this.totalCount) || other.totalCount == _this.totalCount)&&(identical(other.hasNextPage, _this.hasNextPage) || other.hasNextPage == _this.hasNextPage)&&(identical(other.hasPreviousPage, _this.hasPreviousPage) || other.hasPreviousPage == _this.hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PagedProducts;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.page,_this.pageSize,_this.totalCount,_this.hasNextPage,_this.hasPreviousPage);
}

@override
String toString() {
  final _this = this as PagedProducts;
  return 'PagedProducts(items: ${_this.items}, page: ${_this.page}, pageSize: ${_this.pageSize}, totalCount: ${_this.totalCount}, hasNextPage: ${_this.hasNextPage}, hasPreviousPage: ${_this.hasPreviousPage})';
}


}

/// @nodoc
abstract mixin class $PagedProductsCopyWith<$Res>  {
  factory $PagedProductsCopyWith(PagedProducts value, $Res Function(PagedProducts) _then) = _$PagedProductsCopyWithImpl;
@useResult
$Res call({
 List<Product> items, int page, int pageSize, int totalCount, bool hasNextPage, bool hasPreviousPage
});




}
/// @nodoc
class _$PagedProductsCopyWithImpl<$Res>
    implements $PagedProductsCopyWith<$Res> {
  _$PagedProductsCopyWithImpl(this._self, this._then);

  final PagedProducts _self;
  final $Res Function(PagedProducts) _then;

/// Create a copy of PagedProducts
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalCount = null,Object? hasNextPage = null,Object? hasPreviousPage = null,}) {
  return _then(PagedProducts(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Product>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,hasPreviousPage: null == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PagedProducts].
extension PagedProductsPatterns on PagedProducts {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PagedProducts value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PagedProducts() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PagedProducts value)  $default,){
final _that = this;
switch (_that) {
case _PagedProducts():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PagedProducts value)?  $default,){
final _that = this;
switch (_that) {
case _PagedProducts() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Product> items,  int page,  int pageSize,  int totalCount,  bool hasNextPage,  bool hasPreviousPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PagedProducts() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalCount,_that.hasNextPage,_that.hasPreviousPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Product> items,  int page,  int pageSize,  int totalCount,  bool hasNextPage,  bool hasPreviousPage)  $default,) {final _that = this;
switch (_that) {
case _PagedProducts():
return $default(_that.items,_that.page,_that.pageSize,_that.totalCount,_that.hasNextPage,_that.hasPreviousPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Product> items,  int page,  int pageSize,  int totalCount,  bool hasNextPage,  bool hasPreviousPage)?  $default,) {final _that = this;
switch (_that) {
case _PagedProducts() when $default != null:
return $default(_that.items,_that.page,_that.pageSize,_that.totalCount,_that.hasNextPage,_that.hasPreviousPage);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PagedProducts implements PagedProducts {
  const _PagedProducts({required  List<Product> items, required this.page, required this.pageSize, required this.totalCount, required this.hasNextPage, required this.hasPreviousPage}): _items = items;
  factory _PagedProducts.fromJson(Map<String, dynamic> json) => _$PagedProductsFromJson(json);

 final  List<Product> _items;
@override List<Product> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  int page;
@override final  int pageSize;
@override final  int totalCount;
@override final  bool hasNextPage;
@override final  bool hasPreviousPage;

/// Create a copy of PagedProducts
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PagedProductsCopyWith<_PagedProducts> get copyWith => __$PagedProductsCopyWithImpl<_PagedProducts>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PagedProductsToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PagedProducts&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.page, page) || other.page == page)&&(identical(other.pageSize, pageSize) || other.pageSize == pageSize)&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.hasPreviousPage, hasPreviousPage) || other.hasPreviousPage == hasPreviousPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),page,pageSize,totalCount,hasNextPage,hasPreviousPage);
}

@override
String toString() {
    return 'PagedProducts(items: $items, page: $page, pageSize: $pageSize, totalCount: $totalCount, hasNextPage: $hasNextPage, hasPreviousPage: $hasPreviousPage)';
}


}

/// @nodoc
abstract mixin class _$PagedProductsCopyWith<$Res> implements $PagedProductsCopyWith<$Res> {
  factory _$PagedProductsCopyWith(_PagedProducts value, $Res Function(_PagedProducts) _then) = __$PagedProductsCopyWithImpl;
@override @useResult
$Res call({
 List<Product> items, int page, int pageSize, int totalCount, bool hasNextPage, bool hasPreviousPage
});




}
/// @nodoc
class __$PagedProductsCopyWithImpl<$Res>
    implements _$PagedProductsCopyWith<$Res> {
  __$PagedProductsCopyWithImpl(this._self, this._then);

  final _PagedProducts _self;
  final $Res Function(_PagedProducts) _then;

/// Create a copy of PagedProducts
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? page = null,Object? pageSize = null,Object? totalCount = null,Object? hasNextPage = null,Object? hasPreviousPage = null,}) {
  return _then(_PagedProducts(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Product>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,pageSize: null == pageSize ? _self.pageSize : pageSize // ignore: cast_nullable_to_non_nullable
as int,totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,hasPreviousPage: null == hasPreviousPage ? _self.hasPreviousPage : hasPreviousPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
