import 'package:flutter/services.dart';
import 'package:mukesh_mahaling/core/resources/colors.dart';

class AppStatusBar {
  static splashStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: AppColor.statusbarColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }
}
