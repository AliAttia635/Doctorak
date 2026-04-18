import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDcotorItem extends StatelessWidget {
  const RecommendedDcotorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/recommended_doctor.png"),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Dr. Randy Wigham", style: Styles.font16LightBlackBold),
            verticalSpace(5),
            Text(
              "General | RSUD Gatot Subroto",
              style: Styles.font12GreyMedium,
            ),
            verticalSpace(5),
            Row(
              children: [
                Icon(
                  Icons.star_rounded,
                  color: Colors.amberAccent,
                  size: 20.sp,
                ),
                Text(" 4.8", style: Styles.font12GreyMedium),
                Text(" (4,279 reviews)", style: Styles.font12GreyMedium),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
