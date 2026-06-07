import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/widgets/app_statusbar.dart';

import 'core/resources/strings.dart';
import 'core/routes/app_routes.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const MyApp(),

    //^  with device Preview
    // DevicePreview(
    //   enabled: !kReleaseMode,
    //   builder: (context) => const MyApp(), // Wrap your app
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    //^ Set status bar color
    AppStatusBar.splashStatusBarColor();
    return GetMaterialApp(
      theme: ThemeData(dividerColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      // initialBinding: ControllerBinding(),
      getPages: getPages,
      initialRoute: '/',
      // initialRoute: '/HomeScreen',
      // home: const ProfileAccordion(),
    );
  }
}
