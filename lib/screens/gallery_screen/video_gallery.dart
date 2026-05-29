//! Video Gallery Section

import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/routes/pages.dart';
import 'package:mukesh_mahaling/screens/youtube_video_screen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoGallery extends StatefulWidget {
  const VideoGallery({super.key});

  @override
  State<VideoGallery> createState() => _VideoGalleryState();
}

class _VideoGalleryState extends State<VideoGallery> {
  List thumbNailList = [
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
  ];

  List thumbNail = [
    "ଭୁବନେଶ୍ବର ସ୍ଥିତ ଅଖିଳ ଭାରତୀୟ ଆର୍ୟୁବିଜ୍ଞାନ ସଂସ୍ଥାନର ୫ମ ସମାବର୍ତ୍ତନ ଉତ୍ସବ-୨୦୨୫ ସମାରୋହରେ ଯୋଗଦାନ",
    "ରାଜ୍ଯର ମୋଟ 3 କୋଟିରୁ ଊର୍ଦ୍ଧ୍ଵ ଲୋକଙ୍କୁ ସ୍ୱାସ୍ଥ୍ୟ କାର୍ଡ ବଣ୍ଟାଯିବ",
    "ଲୋଇସିଂହା ନିର୍ବାଚନ ମଣ୍ଡଳୀର ଗୌରବ। ଗାଇଖାଇ ର Eco Tourism ପ୍ରକଳ୍ପ",
    "Loisingha New Bus Stand",
  ];

  List videoList = [
    "https://youtu.be/PZoxSZnbSNQ",
    "https://youtu.be/gcXe_-IR3RA",
    "https://youtu.be/ah9yG3-om6Y",
    "https://youtu.be/Br_OYsprRHQ",
  ];

  late YoutubePlayerController controller;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return
     ListView.separated(
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
              flags: const YoutubePlayerFlags(autoPlay: false, mute: false),
            );
            Get.to(YoutubeVideoScreen(controller: controller));
            setState(() {
            });
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
    );
 
  }
}

