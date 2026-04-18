import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/shared_widgets/custom_text_button.dart';
import 'package:docdoc_1/core/themes/app_colors.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:docdoc_1/features/home/presentation/widgets/book_and_schedule_nearest_doctor.dart';
import 'package:docdoc_1/features/home/presentation/widgets/doctor_speciality_item.dart';
import 'package:docdoc_1/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            children: [
              const HomeTopBar(),
              verticalSpace(30),
              BookAndScheduleNearestDoctor(),
              verticalSpace(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Doctor Speciality",
                    style: Styles.font18LightBlackSemiBold,
                  ),
                  CustomTextButton(
                    buttonWidth: 39,
                    horizontalPadding: 0,
                    buttonHeight: 18,
                    backgroundColor: Colors.transparent,
                    buttonText: "See All",
                    onPressed: () {},
                    textStyle: Styles.font12PrimaryColorRegular,
                  ),
                ],
              ),
              SizedBox(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
