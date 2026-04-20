import 'package:docdoc_1/core/helpers/spacing.dart';
import 'package:docdoc_1/features/home/presentation/widgets/book_and_schedule_nearest_doctor.dart';
import 'package:docdoc_1/features/home/presentation/widgets/specializations_and_doctors_bloc_builder.dart';
import 'package:docdoc_1/features/home/presentation/widgets/home_top_bar.dart';
import 'package:flutter/material.dart';

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
              SpecializationsAndDoctorsBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
