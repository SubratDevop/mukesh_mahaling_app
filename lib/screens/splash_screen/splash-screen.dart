// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/resources/app_text_size.dart';
import 'package:mukesh_mahaling/core/resources/colors.dart';
import 'package:mukesh_mahaling/screens/splash_screen/controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashCsreenColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/bjp.png",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),

            H1Text(
              tittle: "Grievance Cell",
              tittleColor: AppColor.primaryColor,
            ),
            H2Text(tittle: "MLA Loisingha", textWeight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
