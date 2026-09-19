// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _LoginSuccess value)?  loginSuccess,TResult Function( _RegisterSuccess value)?  registerSuccess,TResult Function( _VerifyEmailSuccess value)?  verifyEmailSuccess,TResult Function( _ResendOtpSuccess value)?  resendOtpSuccess,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess(_that);case _ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _LoginSuccess value)  loginSuccess,required TResult Function( _RegisterSuccess value)  registerSuccess,required TResult Function( _VerifyEmailSuccess value)  verifyEmailSuccess,required TResult Function( _ResendOtpSuccess value)  resendOtpSuccess,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _LoginSuccess():
return loginSuccess(_that);case _RegisterSuccess():
return registerSuccess(_that);case _VerifyEmailSuccess():
return verifyEmailSuccess(_that);case _ResendOtpSuccess():
return resendOtpSuccess(_that);case _Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _LoginSuccess value)?  loginSuccess,TResult? Function( _RegisterSuccess value)?  registerSuccess,TResult? Function( _VerifyEmailSuccess value)?  verifyEmailSuccess,TResult? Function( _ResendOtpSuccess value)?  resendOtpSuccess,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _LoginSuccess() when loginSuccess != null:
return loginSuccess(_that);case _RegisterSuccess() when registerSuccess != null:
return registerSuccess(_that);case _VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess(_that);case _ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess(_that);case _Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  loginSuccess,TResult Function()?  registerSuccess,TResult Function()?  verifyEmailSuccess,TResult Function()?  resendOtpSuccess,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _RegisterSuccess() when registerSuccess != null:
return registerSuccess();case _VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess();case _ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess();case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  loginSuccess,required TResult Function()  registerSuccess,required TResult Function()  verifyEmailSuccess,required TResult Function()  resendOtpSuccess,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _LoginSuccess():
return loginSuccess();case _RegisterSuccess():
return registerSuccess();case _VerifyEmailSuccess():
return verifyEmailSuccess();case _ResendOtpSuccess():
return resendOtpSuccess();case _Error():
return error(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  loginSuccess,TResult? Function()?  registerSuccess,TResult? Function()?  verifyEmailSuccess,TResult? Function()?  resendOtpSuccess,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _LoginSuccess() when loginSuccess != null:
return loginSuccess();case _RegisterSuccess() when registerSuccess != null:
return registerSuccess();case _VerifyEmailSuccess() when verifyEmailSuccess != null:
return verifyEmailSuccess();case _ResendOtpSuccess() when resendOtpSuccess != null:
return resendOtpSuccess();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements AuthState {
  const _Initial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.initial()';
}


}




/// @nodoc


class _Loading implements AuthState {
  const _Loading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.loading()';
}


}




/// @nodoc


class _LoginSuccess implements AuthState {
  const _LoginSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.loginSuccess()';
}


}




/// @nodoc


class _RegisterSuccess implements AuthState {
  const _RegisterSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.registerSuccess()';
}


}




/// @nodoc


class _VerifyEmailSuccess implements AuthState {
  const _VerifyEmailSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyEmailSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.verifyEmailSuccess()';
}


}




/// @nodoc


class _ResendOtpSuccess implements AuthState {
  const _ResendOtpSuccess();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ResendOtpSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'AuthState.resendOtpSuccess()';
}


}




/// @nodoc


class _Error implements AuthState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
