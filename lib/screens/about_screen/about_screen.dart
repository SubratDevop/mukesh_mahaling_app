// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';
import 'package:mukesh_mahaling/core/resources/app_text_size.dart';
import 'package:mukesh_mahaling/core/resources/colors.dart';
import 'package:mukesh_mahaling/core/resources/screen_size.dart';
import 'package:mukesh_mahaling/screens/about_screen/controler/about_controller.dart';

class AboutScreen extends StatelessWidget {
  AboutScreen({super.key});
  final controller = Get.put(AboutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.statusbarColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 70,
              width: ScreenSize.width(context),
              child: Stack(
                children: [
                  Center(
                    child: H1Text(
                      tittle: "About",
                      textSize: 15,
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

            Expanded(
              child: Container(
                width: ScreenSize.width(context),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(34),
                    topRight: Radius.circular(34),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: ScreenSize.width(context),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/flag.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/mukesh.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    10.kH,

                    RichText(
                      text: TextSpan(
                        text: "Dr. Mukesh Mahalingis ", // default style
                        style: GoogleFonts.outfit(
                          fontSize: AppTextSize.h3Textsize + 3,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF22262F),
                        ),
                        children: [
                          TextSpan(
                            text:
                                "an Indian Politician born in the year 1973 in the village Nagaon (B) of Agalpur Block of Balangir district coming under jurisdiction of 66-Loisingha Assembly Constituency of the State of Odisha. Dr. Mahaling being a Member of Bharatiya Janata Party (BJP) has been elected as Member of Legislative Assembly (MLA) in the General Election 2019 for 66-Loisingha Assembly Constituency. ",
                            style: GoogleFonts.outfit(
                              fontSize: AppTextSize.h3Textsize + 3,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF22262F),
                            ),
                          ),
                        ],
                      ),
                    ),

                    15.kH,

                    H1Text(
                      tittle: "Journey So Far",
                      tittleColor: AppColor.primaryColor,
                      textWeight: FontWeight.w500,
                    ),
                    2.kH,
                    Center(
                      child: SizedBox(
                        width: ScreenSize.width(context) / 8,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ),
                    10.kH,

                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (_, __) => Divider(
                          height: 1,
                          indent: 20,
                          endIndent: 20,
                          color: Color(0xFFE4E4E7),
                        ),
                        padding: EdgeInsets.zero,
                        itemCount: controller.sections.length,
                        itemBuilder: (_, index) {
                          return Card(
                            color: Colors.white.withOpacity(0.5),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: ExpansionTile(
                              initiallyExpanded: controller.isExpanded.value,
                              onExpansionChanged: (expanded) =>
                                  controller.onExpansionChange(index, expanded),

                              title:
                              //  Text(
                              //   controller.sections[index]["title"]!,
                              //   style: AppTypography.subtitle(context),
                              // ),

                               H2Text(
                                tittle: controller.sections[index]["title"]!,
                                textSize: 10,
                                textWeight: FontWeight.w500,
                                maxTextlines: 2,
                              ),
                              iconColor: Colors.orange,
                              collapsedIconColor: Colors.black,
                              backgroundColor: controller.isExpanded.value
                                  ? Colors.orange.shade50
                                  : Colors.white,
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade50,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: H3Text(
                                    tittle:
                                        controller.sections[index]["content"]!,
                                    maxTextlines: 15,
                                    textSize: 08,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    25.kH,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String content;
  final String? subtitle;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.content,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1Text(
            tittle: title,
            tittleColor: Colors.black,
            textSize: 50,
            textWeight: FontWeight.w500,
          ),
          // Text("title", style: AppTypography.bodyLarge(context)),

          SizedBox(
            width: ScreenSize.width(context),
            child: Divider(color: Color(0xFFE4E4E7), thickness: 0.9),
          ),
        ],
      ),
      onExpansionChanged: (value) {
        debugPrint("value :::::::::: ${value.toString()}");
      },
      trailing: const Icon(Icons.keyboard_arrow_down, color: Colors.orange),
      children: [
        Text(
          content,
          style: const TextStyle(fontSize: 5, color: Colors.black87),
        ),
      ],
    );
  }
}
