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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationLoading value)?  specializationloading,TResult Function( SpecializationSuccess value)?  specializationsuccess,TResult Function( SpecializationFailure value)?  specializationfailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationloading != null:
return specializationloading(_that);case SpecializationSuccess() when specializationsuccess != null:
return specializationsuccess(_that);case SpecializationFailure() when specializationfailure != null:
return specializationfailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationLoading value)  specializationloading,required TResult Function( SpecializationSuccess value)  specializationsuccess,required TResult Function( SpecializationFailure value)  specializationfailure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return specializationloading(_that);case SpecializationSuccess():
return specializationsuccess(_that);case SpecializationFailure():
return specializationfailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationLoading value)?  specializationloading,TResult? Function( SpecializationSuccess value)?  specializationsuccess,TResult? Function( SpecializationFailure value)?  specializationfailure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationloading != null:
return specializationloading(_that);case SpecializationSuccess() when specializationsuccess != null:
return specializationsuccess(_that);case SpecializationFailure() when specializationfailure != null:
return specializationfailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationloading,TResult Function( int selectedIndex)?  specializationsuccess,TResult Function( String errMessage)?  specializationfailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationloading != null:
return specializationloading();case SpecializationSuccess() when specializationsuccess != null:
return specializationsuccess(_that.selectedIndex);case SpecializationFailure() when specializationfailure != null:
return specializationfailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationloading,required TResult Function( int selectedIndex)  specializationsuccess,required TResult Function( String errMessage)  specializationfailure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return specializationloading();case SpecializationSuccess():
return specializationsuccess(_that.selectedIndex);case SpecializationFailure():
return specializationfailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationloading,TResult? Function( int selectedIndex)?  specializationsuccess,TResult? Function( String errMessage)?  specializationfailure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationloading != null:
return specializationloading();case SpecializationSuccess() when specializationsuccess != null:
return specializationsuccess(_that.selectedIndex);case SpecializationFailure() when specializationfailure != null:
return specializationfailure(_that.errMessage);case _:
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
  return 'HomeState.specializationloading()';
}


}




/// @nodoc


class SpecializationSuccess implements HomeState {
  const SpecializationSuccess({required this.selectedIndex});
  

 final  int selectedIndex;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSuccessCopyWith<SpecializationSuccess> get copyWith => _$SpecializationSuccessCopyWithImpl<SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess&&(identical(other.selectedIndex, selectedIndex) || other.selectedIndex == selectedIndex));
}


@override
int get hashCode => Object.hash(runtimeType,selectedIndex);

@override
String toString() {
  return 'HomeState.specializationsuccess(selectedIndex: $selectedIndex)';
}


}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess value, $Res Function(SpecializationSuccess) _then) = _$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 int selectedIndex
});




}
/// @nodoc
class _$SpecializationSuccessCopyWithImpl<$Res>
    implements $SpecializationSuccessCopyWith<$Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess _self;
  final $Res Function(SpecializationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? selectedIndex = null,}) {
  return _then(SpecializationSuccess(
selectedIndex: null == selectedIndex ? _self.selectedIndex : selectedIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
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
  return 'HomeState.specializationfailure(errMessage: $errMessage)';
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
