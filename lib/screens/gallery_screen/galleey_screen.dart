// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';
import 'package:mukesh_mahaling/screens/gallery_screen/video_gallery.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/colors.dart';
import '../../core/resources/screen_size.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;
  set selectedIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                      tittle: "Gallery",
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
              child: Column(
                children: [
                  PhotoVideoToggle(
                    selectedIndex: selectedIndex,
                    onChanged: (index) {
                      selectedIndex = index; // update via setter
                    },
                  ),
                  15.kH,
                  _selectedIndex == 0
                      ? Expanded(child: PhotoGallery())
                      : Expanded(child: VideoGallery()),
                ],
              ),
            ),
            20.kH,
          ],
        ),
      ),
    );
  }
}

class PhotoVideoToggle extends StatefulWidget {
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  const PhotoVideoToggle({
    super.key,
    required this.selectedIndex,
    required this.onChanged,
  });

  @override
  State<PhotoVideoToggle> createState() => _PhotoVideoToggleState();
}

class _PhotoVideoToggleState extends State<PhotoVideoToggle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFE4E4E7)),
      ),
      child: Row(children: [_buildTab("Photos", 0), _buildTab("Videos", 1)]),
    );
  }

  Widget _buildTab(String text, int index) {
    bool isSelected = widget.selectedIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => widget.onChanged(index), // notify parent
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: isSelected
                ? AppColor.primaryColor.withOpacity(0.2)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          alignment: Alignment.center,
          child: H1Text(
            tittle: text,
            tittleColor: isSelected
                ? AppColor.primaryColor
                : const Color(0xFFA1A1AA),
            textWeight: FontWeight.w500,
            textSize: 16,
          ),
        ),
      ),
    );
  }
}

//! Photo Gallery Section
class PhotoGallery extends StatelessWidget {
  const PhotoGallery({super.key});

  final List<String> imageUrls = const [
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image27.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image27.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image1.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image10.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image15.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image17.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image25.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image30.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image31.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image37.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image35.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image36.jpeg",
    "https://drmukeshmahaling.in/assets/frontend/images/development/image23.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(imageUrls[index], fit: BoxFit.cover),
        );
      },
    );
  }
}
