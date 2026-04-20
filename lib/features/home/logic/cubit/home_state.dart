import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationloading() = SpecializationLoading;
  const factory HomeState.specializationsuccess({required int selectedIndex}) =
      SpecializationSuccess;
  const factory HomeState.specializationfailure({required String errMessage}) =
      SpecializationFailure;
}
