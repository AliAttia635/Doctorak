import 'package:doctor_app/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/svgs/Docdoc_logo_low_opcaity.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.white, // background color
                  Colors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [0.14, 0.4]),
          ),
          child: Image.asset(
            'assets/images/onboarding_doctor.png',
          ),
        ),
        Positioned(
          bottom: 20,
          left: 0,
          right: 0,
          child: Text(
            "Best Doctor\nAppointment App",
            style: Styles.font32Blue700Weight.copyWith(
              height: 1.4,
            ),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
