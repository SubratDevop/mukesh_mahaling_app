import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/resources/font_size.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/screen_size.dart';

class NewsLetterScreen extends StatelessWidget {
  const NewsLetterScreen({super.key});
  // Sample data
  final List<Map<String, String>> items = const [
    //! 2025
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 July",
      "link":
          "https://drive.google.com/file/d/1hEL4lREAGUVWtLWaKX2hZP8EcNdpRYPq/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 June",
      "link":
          "https://drive.google.com/file/d/1YVLCV39eaTdfkUWFX16rSEVG8kV4mJwr/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 May",
      "link":
          "https://drive.google.com/file/d/1iYVuFIt8V-h3SsMrH2fqDnzvTrH0L9ms/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 April",
      "link":
          "https://drive.google.com/file/d/1c89P8dToBERS1JoavX9FxPkzFy_sH8EA/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 March",
      "link":
          "https://drive.google.com/file/d/12o9pjfVQsvAFkUXH0wZwwRqAx6EfDiWE/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 Feb",
      "link":
          "https://drive.google.com/file/d/11pS7-gZZLC8BNBe2ctvm5DDoY_3RORqA/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2025JulyCover.jpeg",
      "title": "2025 May",
      "link":
          "https://drive.google.com/file/d/1KGodWdHA-wz4nFkN_ntpIAyWJA01ZNHh/view",
    },

    //! 2024
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2024DecemberCover.png",
      "title": "2024 Dec",
      "link":
          "https://drive.google.com/file/d/1fVjPJp9mRvKWBz6Dr68cLR2IUNFwNJYM/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2024NovemberCover.png",
      "title": "2024 Nov",
      "link":
          "https://drive.google.com/file/d/1dGDR2vtpi5Srq84LJ26GAwf7C7DoRCvw/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2024OctoberCover.png",
      "title": "2024 Oct",
      "link":
          "https://drive.google.com/file/d/1UYDCU2mwYQbCUb-pBYcDBGeCk5euO4sx/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2024SeptemberCover.png",
      "title": "2024 Sept",
      "link":
          "https://drive.google.com/file/d/1fALSDmYLSfdCLDo0SQWXj_QAEGbGnAkL/view",
    },
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2024JantoAugCover.png",
      "title": "2024 Jan - Aug",
      "link":
          "https://drive.google.com/file/d/1jJcoFeerc0mhXHlHohrYdFzq5oGZcaSl/view?usp=drive_link",
    },

    //! 2023
    {
      "image":
          "https://drmukeshmahaling.in/assets/frontend/images/newsletter/2023JantoDecCover.png",
      "title": "2023 Jan - Dec",
      "link":
          "https://drive.google.com/file/d/1NqPXP8RcztZ_7yPvALiDB1pqrL5aeoFc/view?usp=drive_link",
    },
  ];

  Future<void> openLink(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.statusbarColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 15, right: 15),
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
                      tittle: "Newslelter",
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
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // two items per row
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.75, // controls height ratio of card
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => openLink(items[index]["link"].toString()),
                    child: Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              child: Image.network(
                                items[index]["image"]!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8),
                            alignment: Alignment.center,
                            child: Text(
                              items[index]["title"]!,
                              style:  TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: FontSize.cardSubTitle(context),
                                color: Colors.deepOrange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
