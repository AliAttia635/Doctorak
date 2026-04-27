import 'package:docdoc_1/features/home/presentation/widgets/book_and_schedule_doctor_image.dart.dart';
import 'package:docdoc_1/features/home/presentation/widgets/book_and_schedule_text_and_button.dart';
import 'package:flutter/material.dart';

class BookAndScheduleNearestDoctor extends StatelessWidget {
  const BookAndScheduleNearestDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [BookAndScheduleTextAndButton(), BookAndScheduleDoctorImage()],
    );
  }
}
