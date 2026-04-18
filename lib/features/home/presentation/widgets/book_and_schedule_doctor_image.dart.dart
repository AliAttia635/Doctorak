import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookAndScheduleDoctorImage extends StatelessWidget {
  const BookAndScheduleDoctorImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -28.sp,
      right: 12.sp,
      child: Image.asset(
        "assets/images/home_view_doctor.png",
        height: 195.h,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
