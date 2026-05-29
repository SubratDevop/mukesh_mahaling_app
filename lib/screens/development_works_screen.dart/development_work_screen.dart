// ignore_for_file: must_be_immutable

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/screen_size.dart';

class DevelopmentWorkScreen extends StatelessWidget {
  DevelopmentWorkScreen({super.key});

  List developImageList = [
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image4.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image3.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image2.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image1.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image6.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image5.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image8.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image7.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image14.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image13.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image12.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image11.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image10.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image9.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image16.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image15.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image18.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image17.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image26.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image25.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image22.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image21.jpeg",
    ],

    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image20.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image19.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image28.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image27.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image32.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image31.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image30.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image29.jpeg",
    ],

    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image34.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image33.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image36.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image35.jpeg",
    ],
    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image38.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image37.jpeg",
    ],

    [
      "https://drmukeshmahaling.in/assets/frontend/images/development/image30.jpeg",
      "https://drmukeshmahaling.in/assets/frontend/images/development/image29.jpeg",
    ],
  ];

  List developmentList = [
    "ପୁଇଁତଲା ବ୍ଲକର ନୂତନ କାର୍ଯ୍ୟାଳୟ ଗୃହ ଉଦ୍ଘାଟନ",
    "ପଟୁଆପାଲି, ପଲ୍ଲୀ ବିକାଶ ଉଚ୍ଚ ବିଦ୍ୟାଳୟର ନୂତନ ଶ୍ରେଣୀ ଗୃହର ଉଦ୍ଘାଟନବ",
    "ବାଞ୍ଜିପାଲି ଠାରେ ଡଃ ଆମ୍ବେଦକରଙ୍କ ପ୍ରତିମୂର୍ତ୍ତି ଉଦ୍‌ଘାଟନ",
    "ମୁରୁଶୁଣ୍ଢି ପ୍ରାଥମିକ କୃଷି ସମବାୟ ସମିତିର ନବନିର୍ମିତ ଅଫିସ୍ ଗୃହର ଉଦ୍ଘାଟନୀ",
    "ବଙ୍ଗାବାହାଲ ଠାରେ ମାଁ ମାହେଶ୍ଵରୀ ଏସଏଚଜି ଛତୁଆ ଉତ୍ପାଦନ କେନ୍ଦ୍ରର ଶୁଭ ଉଦ୍ଘାଟନ",
    "କନ୍ଦାଯୁରି ପଞ୍ଚାୟତ ପରିସରରେ ଭାରତ ରତ୍ନ ଡ଼. ବି. ଆର୍ ଆମ୍ବେଦକରଙ୍କ ପ୍ରତିମୂର୍ତ୍ତି ଉନ୍ମୋଚନ",
    "ହରେକୃଷ୍ଣ ମହତାବ ଉଚ୍ଚ ବିଦ୍ୟାଳୟ ଠାରେ ବିଭିନ୍ନ ଉନ୍ନତିମୂଳକ କାର୍ଯ୍ୟର ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ବଙ୍ଗାବାହାଲ ଠାରେ ଏକ ଭାଗବତ ଟୁଙ୍ଗିର ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ନଅଗାଁ (ଖ) ସ୍ଥିତ ସରକାରୀ ପ୍ରାଥମିକ ବିଦ୍ୟାଳୟ ପରିସରରେ 'ଶିଶୁ ବାଟିକା' ଗୃହର ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ବଡ଼ଟିକା ଠାରେ 'ସନାତନ ବୈଦିକ କନ୍ୟା ଗୁରୁକୁଳମ୍' ର ଭୂମିପୂଜନ ଓ ଶିଳାନ୍ୟାସ",
    "ବଡ଼ଟିକା ଠାରେ ବଡ଼ଟିକା ପଟାଭାଡି ସାଂସ୍କୃତିକ ମଣ୍ଡପ ଏବଂ କଲ୍ଯାଣ ମଣ୍ଡପ ନିର୍ମାଣ ପାଇଁ ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ଡୁଡୁକା ଜଗନ୍ନାଥ ମନ୍ଦିରର ପୁନଃନିର୍ମାଣ ପାଇଁ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ବାନିପାଲି ଠାରେ ନିର୍ମାଣ ହେବାକୁ ଥିବା କଲ୍ୟାଣ ମଣ୍ଡପର ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ବବଜା ଆଞ୍ଚଳିକ ଉଚ୍ଚ ବିଦ୍ୟାଳୟ ଠାରେ ଅତିରିକ୍ତ ଶ୍ରେଣୀ କୋଠରୀର ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ବବଜା ଆଞ୍ଚଳିକ ଉଚ୍ଚ ବିଦ୍ୟାଳୟ ଠାରେ ଅତିରିକ୍ତ ଶ୍ରେଣୀ କୋଠରୀର ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ତାଲଜୁରି ଠାରେ କଲ୍ୟାଣ ମଣ୍ଡପର ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
    "ଏକ ପେଡ ମା କେ ନାମ୍' କାର୍ଯ୍ୟକ୍ରମ ଲୋଇସିଂହା ବନାଞ୍ଚଳ, ଆଗଲପୁର ମିନି ଷ୍ଟାଡିଅମ",
    "ଲୋଇସିଂହା ବ୍ଲକ ଅନ୍ତର୍ଗତ ବବଜା ଆଞ୍ଚଳିକ ଉଚ୍ଚ ବିଦ୍ୟାଳୟ ଠାରେ ଅତିରିକ୍ତ ଶ୍ରେଣୀ କୋଠରୀର ଶୁଭ ଭିତ୍ତିପ୍ରସ୍ତର ସ୍ଥାପନ",
  ];

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
                      textSize: 22,
                      tittle: "Development",
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
              child: ListView.separated(
                padding: EdgeInsets.zero,
                separatorBuilder: (_, __) =>
                    Divider(height: 20, color: Colors.transparent),
                itemCount: developmentList.length,
                itemBuilder: (_, __) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 05),

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.kH,

                        H2Text(
                          tittle: developmentList[__],
                          tittleColor: AppColor.primaryColor,
                          maxTextlines: 2,
                          textWeight: FontWeight.w600,
                        ),
                        10.kH,
                        ImageCarousel(imageUrls: developImageList[__]),
                      ],
                    ),
                  );
                },
              ),
            ),
            20.kH,
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imageUrls;
  const ImageCarousel({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        reverse: false,
        viewportFraction: 0.8,
      ),
      items: imageUrls
          .map(
            (item) => ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                item,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          )
          .toList(),
    );
  }
}
