import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/features/home/data/models/specialization_response_model.dart';
import 'package:docdoc_1/features/home/presentation/widgets/recommended_doctor_item.dart';
import 'package:flutter/material.dart';

class RecommendedDoctorsListview extends StatelessWidget {
  const RecommendedDoctorsListview({super.key, required this.doctors});

  final List<DoctorModel> doctors;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) =>
            RecommendedDcotorItem(doctorModel: doctors[index]),
        separatorBuilder: (context, index) => verticalSpace(10),
        itemCount: doctors.length,
      ),
    );
  }
}
