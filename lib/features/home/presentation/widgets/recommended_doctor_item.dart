import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/core/themes/styles.dart';
import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedDcotorItem extends StatelessWidget {
  const RecommendedDcotorItem({super.key, required this.doctorModel});
  final DoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/recommended_doctor.png"),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctorModel.name, style: Styles.font16LightBlackBold),
            verticalSpace(5),
            Text(
              "${doctorModel.degree} | ${doctorModel.phone}",
              style: Styles.font12GreyMedium,
            ),
            verticalSpace(5),
            Text('${doctorModel.appointPrice}', style: Styles.font12GreyMedium),
          ],
        ),
      ],
    );
  }
}
