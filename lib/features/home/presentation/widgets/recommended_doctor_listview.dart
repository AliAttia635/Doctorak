import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/features/home/presentation/widgets/recommended_doctor_item.dart';
import 'package:flutter/material.dart';

class RecommendedDoctorsListview extends StatelessWidget {
  const RecommendedDoctorsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => RecommendedDcotorItem(),
        separatorBuilder: (context, index) => verticalSpace(10),
        itemCount: 8,
      ),
    );
  }
}
