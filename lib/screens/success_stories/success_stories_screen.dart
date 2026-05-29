// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';
import 'package:mukesh_mahaling/screens/youtube_video_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/screen_size.dart';

class SuceessStoriesScreen extends StatelessWidget {
  SuceessStoriesScreen({super.key});

  List thumbNailList = [
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
  ];

  List thumbNail = [
    "Salebhata - Agalpur Road 2014 - 2024",
    "ଦୀର୍ଘ ୪ ବର୍ଷର ସଂଘର୍ଷ ପରେ ଲୋଇସିଂହା ନିର୍ବାଚନ ମଣ୍ଡଳୀର ପ୍ରଗତିରେ ଯୋଡ଼ି ହୋଇଛି ଆଉ ଏକ ଫର୍ଦ ",
    "Kholakatha | ପାନୀୟ ଜଳର ସମସ୍ୟା କୁ ଆମେ ଅନେକାଂଶରେ ଦୂର  କରିପାରିିଛୁ",
    "ଲୋଇସିଂହା ନିର୍ବାଚନ ମଣ୍ଡଳୀର ଗୌରବ। ଗାଇଖାଇ ର Eco Tourism ପ୍ରକଳ୍ପ",
    "Loisingha New Bus Stand",
  ];

  List videoList = [
    "https://youtu.be/fv-aBIMcecE",
    "https://youtu.be/31G-yTorMig",
    "https://youtu.be/QR6WbU2GLmg",
    "https://youtu.be/ah9yG3-om6Y",
    "https://youtu.be/Br_OYsprRHQ",
  ];
  late YoutubePlayerController controller;

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
                      tittle: "OUR SUCCESS STORIES",
                      tittleColor: AppColor.primaryColor,
                      textSize: 22,
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
              child: ListView.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (_, __) =>
                    Divider(height: 20, color: Colors.transparent),
                itemCount: thumbNailList.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      controller = YoutubePlayerController(
                        initialVideoId: YoutubePlayer.convertUrlToId(
                          videoList[index],
                        )!, // extract videoId
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      );
                      Get.to(YoutubeVideoScreen(controller: controller));
                    }, // whole card tappable
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          // Thumbnail Image
                          Image.network(
                            thumbNailList[index],
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),

                          // Title at top-left
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              width: ScreenSize.width(context),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.black26,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: DescText(
                                tittle: thumbNail[index],
                                tittleColor: Colors.white,
                                maxTextlines: 2,
                              ),
                            ),
                          ),

                          // Play button
                          Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.orange,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
                  20.kH

          ],
        ),
      ),
    );
  }
}
