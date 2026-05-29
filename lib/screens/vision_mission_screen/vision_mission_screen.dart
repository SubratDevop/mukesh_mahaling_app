import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';
import 'package:mukesh_mahaling/core/resources/image_widget.dart';

import '../../core/routes/pages.dart';
import '../../core/widgets/read_more_widget.dart';

class VisionMissionScreen extends StatelessWidget {
  const VisionMissionScreen({super.key});

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
                      tittle: "Mission & Vision",
                      textSize: 22,
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SetImage(
                      image: "meeting.png",
                      width: ScreenSize.width(context),
                    ),

                    10.kH,
                    //! Vision
                    H1Text(
                      tittle: "Vision",
                      tittleColor: AppColor.primaryColor,
                      textWeight: FontWeight.w500,
                    ),
                    2.kH,
                    Center(
                      child: SizedBox(
                        width: ScreenSize.width(context) / 15,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ),
                    15.kH,
                    BioText(
                      shortText:
                          "To build a vibrant, equitable, and future-ready constituency that reflects the aspirations of Vikashit Odisha and Vikashit Bharat, where every citizen enjoys access to clean drinking water, dignified housing, quality education, reliable healthcare, and seamless connectivity.",
                      moreText:
                          "Rooted in the values of the Indian Constitution, our vision is to make Loisingha a model constituency that upholds the Directive Principles of State Policy by ensuring social justice, livelihood security, public health, education for all, and environmental sustainability, while guaranteeing the endurance and protection of Fundamental Rights — including equality, freedom, dignity, and cultural identity. Loisingha shall emerge as a beacon of inclusive growth, digital empowerment, green development, and constitutional morality, where progress and compassion go hand in hand.",
                    ),
                    20.kH,
                    //! Mision
                    H1Text(
                      tittle: "Mission",
                      tittleColor: AppColor.primaryColor,
                      textWeight: FontWeight.w500,
                    ),
                    2.kH,
                    Center(
                      child: SizedBox(
                        width: ScreenSize.width(context) / 15,
                        child: Divider(
                          height: 2,
                          color: Colors.black,
                          thickness: 2,
                        ),
                      ),
                    ),
                    15.kH,

                    //! Vision
                    VisionSection(),
                    20.kH,
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

class VisionSection extends StatefulWidget {
  const VisionSection({super.key});

  @override
  State<VisionSection> createState() => _VisionSectionState();
}

class _VisionSectionState extends State<VisionSection> {
  bool expanded = false;

  final List<String> bulletTexts = [
    "To achieve universal access to clean drinking water by investing in climate-resilient water infrastructure and community-based conservation efforts.",
    "To ensure that every family lives with dignity and security through innovative housing schemes that leave no one behind.",
    "To unlock economic growth by establishing robust, year-round road connectivity that strengthens rural-urban linkages, boosts trade, and ensures equitable access to essential services.",
    "To nurture human capital by ensuring equitable access to quality education, digital literacy, and future-ready vocational skills, empowering youth and bridging opportunity gaps.",
    "To provide reliable and comprehensive healthcare for all, focusing on preventive care, maternal and child health, and modernizing health infrastructure.",
    "To foster a thriving local economy by creating diverse employment opportunities for youth, empowering women, and supporting farmers, artisans, and small businesses through capacity-building and market linkages.",
    "To champion sustainable development and environmental stewardship by promoting green initiatives, renewable energy adoption, and climate-smart agriculture.",
    "To enable digital-first, transparent, and participatory governance that puts people at the center of every decision and ensures real-time solutions to their needs.",
    "To be a dedicated, people-first representative in the Legislative Assembly, committed to inclusive growth, social justice, and the long-term development of Loisingha.",
  ];

  @override
  Widget build(BuildContext context) {
    // show only first 3 bullets when collapsed
    final itemsToShow = expanded ? bulletTexts : bulletTexts.take(3).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...itemsToShow.map((text) => BulletPoint(text: text)),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: DescText(
                tittle: expanded ? "Read less" : "Read more",
                textSize: AppTextSize.h3Textsize + 4,
                textWeight: FontWeight.w600,
                tittleColor: AppColor.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "• ",
          style: TextStyle(fontSize: 16, height: 1.5, color: Colors.black),
        ),
        Expanded(
          child: DescText(
            tittle: text,
            textSize: AppTextSize.h3Textsize + 4,
            textWeight: FontWeight.w400,
            maxTextlines: 10,
            tittleColor: const Color(0xFF22262F),
          ),
        ),
      ],
    );
  }
}
