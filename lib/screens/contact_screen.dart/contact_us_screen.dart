import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/resources/font_size.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/screen_size.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.statusbarColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,),
        child: Column(
          children: [
            SizedBox(
              height: 70,
              width: ScreenSize.width(context),
              child: Stack(
                children: [
                  Center(
                    child: H1Text(
                      textSize: FontSize.screenHeading(context),
                      tittle: "Contact Us",
                      tittleColor: AppColor.primaryColor,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SvgPicture.asset(
                        "assets/icons/back.svg",
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: InAppWebView(
                initialSettings: InAppWebViewSettings(
                  verticalScrollBarEnabled: false, // hides scrollbar
                  disableHorizontalScroll: false,
                ),
             
                initialUrlRequest: URLRequest(
                  url: WebUri("https://drmukeshmahaling.in/Contact/mobile"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
