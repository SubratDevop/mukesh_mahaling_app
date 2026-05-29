// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mukesh_mahaling/core/extension/sizedbox.dart';
import 'package:mukesh_mahaling/core/routes/pages.dart';
import 'package:mukesh_mahaling/core/widgets/app_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: CustomDrawer(
        drawerKey: _key,
        onClose: () {
          Navigator.of(context).pop(); // Close drawer when X pressed
        },
      ),

      appBar: CustomAppBar(
        height: 125,
        child: Padding(
          padding: EdgeInsets.only(top: 20.0, left: 15, right: 15),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  _key.currentState!.openDrawer();
                },
                child: Image.asset(
                  "assets/icons/drawer.png",
                  height: 80,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Stack(
        children: [
          //! bg image
          Container(
            margin: EdgeInsets.only(bottom: ScreenSize.height(context) / 3.7),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              //! first portin content
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/mukeshh.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    12.kH,
                    H1Text(
                      tittle: "Dr. Mukesh Mahaling",
                      tittleColor: AppColor.primaryColor,
                      textSize: AppTextSize.h1Textsize,
                    ),
                    H2Text(
                      tittle:
                          "Hon’ble Minister for Health & Family Welfare, Parliamentary Affairs and Electronics & IT Dept., Govt. Of Odisha \n Hon’ble MLA, Loisingha Assembly Constituency",
                      textWeight: FontWeight.w400,
                      maxTextlines: 5,
                      textSize: AppTextSize.h4Textsize - 2,
                      textOverflow: TextOverflow.ellipsis,
                    ),
                    15.kH,
                  ],
                ),
              ),

              //! second portin content
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
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        children: [
                          10.kH,
                          GrievanceCard(),
                          10.kH,
                          DevelopmentalWorksCard(),
                          10.kH,
                          NewsletterCard(),
                          15.kH,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ! GrievanceCard

class GrievanceCard extends StatelessWidget {
  const GrievanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFFE4E4E7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title with Icon
            Row(
              children: [
                Icon(Icons.assignment, size: 22, color: Colors.black87),
                8.kW,
                H2Text(
                  tittle: "Grievance Redressal",
                  textSize: 10,
                  textWeight: FontWeight.w600,
                ),
              ],
            ),

            16.kH,

            // Buttons Row
            Row(
              children: [
                // Register Grievance button
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 2,
                      ),
                    ),
                    onPressed: () => Get.toNamed("/RegisterGrievanceScreen"),
                    icon: const Icon(Icons.add, color: Colors.white, size: 22),
                    label: H2Text(
                      tittle: "Register",
                      textSize: 9,
                      tittleColor: Colors.white,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Track Status button (Outlined)
                Expanded(
                  child: OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 14),
                    ),
                    onPressed: () => Get.toNamed("/TrackStatusScreen"),
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 22,
                    ),
                    label: H2Text(
                      tittle: "Track Status",
                      textSize: 9,
                      tittleColor: Colors.black,
                      textWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//! DevelopmentalWorksCard

class DevelopmentalWorksCard extends StatelessWidget {
  const DevelopmentalWorksCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFFE4E4E7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //^ Header Row (Title + View All)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.apartment, color: Colors.black87),
                    const SizedBox(width: 6),
                    Text(
                      "Developmental Works",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                TextButton.icon(
                  onPressed: () {},

                  icon: SizedBox.shrink(),
                  label: Text(
                    "View All",

                    style: TextStyle(
                      fontSize: 7,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.deepOrange,
                      decorationThickness: 2,
                      color: Colors.deepOrange,
                      height: 1.5, 
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              
              ],
            ),
            const SizedBox(height: 12),

            // Image Section
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/puitala_office.png", // replace with your image
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),

            // Caption
            Text(
              "New office at Puitala block inaugurated",
              style: TextStyle(fontSize: 09, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

//! NewsletterCard

class NewsletterCard extends StatelessWidget {
  const NewsletterCard({super.key});

  @override
  Widget build(BuildContext context) {
    final months = ["July", "June", "May"];
    final year = "2025";

    return Card(
      color: Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFFE4E4E7)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.newspaper_outlined, color: Colors.black87),
                    const SizedBox(width: 6),
                    Text(
                      "Newsletter",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                TextButton.icon(
                  onPressed: () {},

                  icon: SizedBox.shrink(),
                  label: Text(
                    "View All",

                    style: TextStyle(
                      fontSize: 7,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.deepOrange,
                      decorationThickness: 2,
                      color: Colors.deepOrange,
                      height: 1.5, 
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size(0, 0),
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              
              ],
            ),
            const SizedBox(height: 12),

            // Horizontal Month List
            SizedBox(
              height: 90,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: months.length,
                separatorBuilder: (_, __) => const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  return Container(
                    width: 80,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration( 
                      
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: Colors.grey.withOpacity(0.5),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          months[index],
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          year,
                          style: TextStyle(fontSize: 9, color: Colors.black87),
                        ),
                      ],
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

//! CustomDrawer

class CustomDrawer extends StatelessWidget {
  final VoidCallback onClose;
  GlobalKey<ScaffoldState>? drawerKey;

  CustomDrawer({super.key, this.drawerKey, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(30),
        bottomRight: Radius.circular(30),
      ),
      child: Drawer(
        backgroundColor: Colors.transparent,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF1C1C1C), Color(0xFF2E2E2E)], // dark gradient
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 28,
                    ),
                    onPressed: onClose,
                  ),
                ),
                const SizedBox(height: 10),

                // Menu Items
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(),
                        child: buildMenuItem("Home"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("AboutScreen");
                        },
                        child: buildMenuItem("About"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("VisionMissionScreen");
                        },
                        child: buildMenuItem("Vision & Mission"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("GalleryScreen");
                        },
                        child: buildMenuItem("Gallery"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("DevelopmentWorkScreen");
                        },
                        child: buildMenuItem("Development Works"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("SuceessStoriesScreen");
                        },
                        child: buildMenuItem("Success Stories"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("NewsLetterScreen");
                        },
                        child: buildMenuItem("News Letter"),
                      ),
                      GestureDetector(
                        onTap: () {
                          drawerKey!.currentState!.openEndDrawer();
                          Get.toNamed("ContactUsScreen");
                        },
                        child: buildMenuItem("Contact"),
                      ),
                      // buildMenuItem(
                      //   "More",
                      //   trailing: Icon(Icons.more_horiz, color: Colors.white),
                      // ),
                    ],
                  ),
                ),

                // Footer
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      SizedBox(
                        width: ScreenSize.width(context),
                        child: TextButton(
                          onPressed: () => Get.toNamed("AdminScreen"),
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                              const BorderSide(
                                color: Colors.white, // 🔥 Border color here
                                width: 1.5,
                              ),
                            ),
                          ),
                          child: H2Text(
                            tittle: "Admin Login",
                            textSize: 11,
                            tittleColor: Colors.white,
                            textWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const SizedBox(height: 09),
                      Text(
                        "Copyright @ 2025 Dr. Mukesh Mahaling",
                        style: TextStyle(fontSize: 07, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(String title, {Widget? trailing}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: H2Text(tittle: title, tittleColor: Colors.white,textSize: 10,),
          ),
          if (trailing != null) trailing,
        ],
      ),
    );
  }
}
