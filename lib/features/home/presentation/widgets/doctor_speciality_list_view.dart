import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc_1/features/home/presentation/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({
    super.key,
    required this.specializationResponseModel,
  });
  final SpecializationResponseModel specializationResponseModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: specializationResponseModel.data.length,
        itemBuilder: (context, index) => DoctorSpecialityItem(
          image: 'assets/images/Man_Doctor_Europe.png',
          text: specializationResponseModel.data[index].name,
          currentIndex: index,
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
      ),
    );
  }
}
