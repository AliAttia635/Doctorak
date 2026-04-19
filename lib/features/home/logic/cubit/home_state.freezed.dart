// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationLoading value)?  Specializationloading,TResult Function( SpecializationSuccess value)?  Specializationsuccess,TResult Function( SpecializationFailure value)?  Specializationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when Specializationloading != null:
return Specializationloading(_that);case SpecializationSuccess() when Specializationsuccess != null:
return Specializationsuccess(_that);case SpecializationFailure() when Specializationfailure != null:
return Specializationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationLoading value)  Specializationloading,required TResult Function( SpecializationSuccess value)  Specializationsuccess,required TResult Function( SpecializationFailure value)  Specializationfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return Specializationloading(_that);case SpecializationSuccess():
return Specializationsuccess(_that);case SpecializationFailure():
return Specializationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationLoading value)?  Specializationloading,TResult? Function( SpecializationSuccess value)?  Specializationsuccess,TResult? Function( SpecializationFailure value)?  Specializationfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when Specializationloading != null:
return Specializationloading(_that);case SpecializationSuccess() when Specializationsuccess != null:
return Specializationsuccess(_that);case SpecializationFailure() when Specializationfailure != null:
return Specializationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  Specializationloading,TResult Function()?  Specializationsuccess,TResult Function( String errMessage)?  Specializationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when Specializationloading != null:
return Specializationloading();case SpecializationSuccess() when Specializationsuccess != null:
return Specializationsuccess();case SpecializationFailure() when Specializationfailure != null:
return Specializationfailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  Specializationloading,required TResult Function()  Specializationsuccess,required TResult Function( String errMessage)  Specializationfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return Specializationloading();case SpecializationSuccess():
return Specializationsuccess();case SpecializationFailure():
return Specializationfailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  Specializationloading,TResult? Function()?  Specializationsuccess,TResult? Function( String errMessage)?  Specializationfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when Specializationloading != null:
return Specializationloading();case SpecializationSuccess() when Specializationsuccess != null:
return Specializationsuccess();case SpecializationFailure() when Specializationfailure != null:
return Specializationfailure(_that.errMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationLoading implements HomeState {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.Specializationloading()';
}


}




/// @nodoc


class SpecializationSuccess implements HomeState {
  const SpecializationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.Specializationsuccess()';
}


}




/// @nodoc


class SpecializationFailure implements HomeState {
  const SpecializationFailure({required this.errMessage});
  

 final  String errMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationFailureCopyWith<SpecializationFailure> get copyWith => _$SpecializationFailureCopyWithImpl<SpecializationFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationFailure&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage);

@override
String toString() {
  return 'HomeState.Specializationfailure(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class $SpecializationFailureCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationFailureCopyWith(SpecializationFailure value, $Res Function(SpecializationFailure) _then) = _$SpecializationFailureCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class _$SpecializationFailureCopyWithImpl<$Res>
    implements $SpecializationFailureCopyWith<$Res> {
  _$SpecializationFailureCopyWithImpl(this._self, this._then);

  final SpecializationFailure _self;
  final $Res Function(SpecializationFailure) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(SpecializationFailure(
errMessage: null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
