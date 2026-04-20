import 'dart:developer';

import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/helpers/widget_show_loading_indicator.dart';
import 'package:docdoc_1/features/home/logic/cubit/home_cubit.dart';
import 'package:docdoc_1/features/home/logic/cubit/home_state.dart';
import 'package:docdoc_1/features/home/presentation/widgets/custom_doctor_row.dart';
import 'package:docdoc_1/features/home/presentation/widgets/doctor_speciality_list_view.dart';
import 'package:docdoc_1/features/home/presentation/widgets/recommended_doctor_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationFailure,
      builder: (context, state) {
        final cubit = context.read<HomeCubit>();
        final selectedIndex = cubit.selectedSpecializationIndex;

        log("builder is called with index $selectedIndex");
        return state.maybeWhen(
          specializationloading: () {
            return setupLoading();
          },
          specializationsuccess: (selectedIndex) {
            return setupSuccess(context, selectedIndex, cubit);
          },
          specializationfailure: (errMessage) {
            return setupFailure(errMessage);
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }

  Widget setupSuccess(
    BuildContext context,
    int selectedIndex,
    HomeCubit cubit,
  ) {
    return Expanded(
      child: Column(
        children: [
          CustomDoctorRow(text: "Doctor Speciality"),
          DoctorSpecialityListView(
            specializationResponseModel: BlocProvider.of<HomeCubit>(
              context,
            ).specializationResponseModel!,
          ),
          verticalSpace(15),
          CustomDoctorRow(text: "Recommendation Doctor"),
          verticalSpace(10),
          RecommendedDoctorsListview(
            doctors:
                cubit.specializationResponseModel!.data[selectedIndex].doctors,
          ),
        ],
      ),
    );
  }

  Widget setupFailure(String errMessage) {
    return Center(child: Text(errMessage));
  }

  Widget setupLoading() {
    return loadingIndicator();
  }
}
