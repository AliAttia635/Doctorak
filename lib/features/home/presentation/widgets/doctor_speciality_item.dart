import 'package:docdoc_1/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({
    super.key,
    required this.image,
    required this.text,
  });

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 73.75.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 56.w,
            height: 56.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: AppColors.moreLighterGrey,
            ),
            child: Image.asset(image, width: 32.w, height: 32.h),
          ),
          SizedBox(height: 8.h),
          Text(text, style: TextStyle(fontSize: 12.sp)),
        ],
      ),
    );
  }
}
