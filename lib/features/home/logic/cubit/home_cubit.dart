import 'dart:developer';

import 'package:docdoc_1/core/networking/api_result.dart';
import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc_1/features/home/data/repos/home_repo.dart';
import 'package:docdoc_1/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeState.initial());
  HomeRepo homeRepo;

  SpecializationResponseModel? specializationResponseModel;
  int selectedSpecializationIndex = 0;

  void changeSpecialization(int index) {
    selectedSpecializationIndex = index;

    emit(
      HomeState.specializationsuccess(
        selectedIndex: selectedSpecializationIndex,
      ),
    );
  }

  Future<void> getSpecializations() async {
    emit(const HomeState.specializationloading());

    ApiResult<SpecializationResponseModel> responseResult = await homeRepo
        .getSpecializations();

    responseResult.when(
      success: (specializationResponseData) {
        specializationResponseModel = specializationResponseData;
        emit(const HomeState.specializationsuccess(selectedIndex: 0));
      },
      faliure: (errorHandler) {
        emit(
          HomeState.specializationfailure(
            errMessage: errorHandler.apiErrorModel.errMessage ?? "",
          ),
        );
      },
    );
  }
}
