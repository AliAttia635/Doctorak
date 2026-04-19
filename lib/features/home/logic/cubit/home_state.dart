import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.Specializationloading() = SpecializationLoading;
  const factory HomeState.Specializationsuccess() = SpecializationSuccess;
  const factory HomeState.Specializationfailure({required String errMessage}) =
      SpecializationFailure;
}
