import 'package:docdoc_1/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Ali!", style: Styles.font18LightBlackBold),
            Text("How are you today?", style: Styles.font12GreyBold),
          ],
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(30),
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  "assets/svgs/Notification.svg",
                  width: 24,
                  height: 24,
                ),
              ),
            ),

            // will be handled by the endpoint to show if there is a new notification or not
            Positioned(
              right: 9.sp,
              top: 10.sp,
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
