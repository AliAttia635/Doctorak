import 'package:docdoc_1/features/home/presentation/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 86.h,
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => DoctorSpecialityItem(
          image: 'assets/images/Man_Doctor_Europe.png',
          text: 'General',
        ),
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
      ),
    );
  }
}
