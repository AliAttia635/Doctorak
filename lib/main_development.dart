import 'package:docdoc_1/core/di/dependency_injection.dart';
import 'package:docdoc_1/core/helpers/constants.dart';
import 'package:docdoc_1/core/helpers/shared_prefrences_helper.dart';
import 'package:docdoc_1/docdoc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // 👈 الحل
  setupGetIt();
  // to fix text being hidden bug in flutter_screenutil in release mode
  await isUserLoggedIn();
  await ScreenUtil.ensureScreenSize();
  runApp(const DocDocApp());
}

Future<void> isUserLoggedIn() async {
  String userLoggedIn = await SharedPrefHelper.getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userLoggedIn.isNotEmpty) {
    isUserLoggedInFlag = true;
  } else {
    isUserLoggedInFlag = false;
  }
}
