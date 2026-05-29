

import '../../screens/admin_screen/admin_screen.dart' show AdminScreen;
import 'pages.dart';

class AppPages {
  static String splashScreen = '/';
  static String loginScreen = '/LoginScreen';
  static String otpScreen = '/OtpScreen';
  static String homeScreen = '/HomeScreen';
  static String aboutScreen = '/AboutScreen';
  static String registerGrievanceScreen = '/RegisterGrievanceScreen';
  static String trackStatusScreen = '/TrackStatusScreen';
  static String visionMissionScreen = '/VisionMissionScreen';
  static String galleryScreen = '/GalleryScreen';
  static String developmentWorkScreen = '/DevelopmentWorkScreen';
  static String suceessStoriesScreen = '/SuceessStoriesScreen';
  static String contactUsScreen = '/ContactUsScreen';
  static String newsLetterScreen = '/NewsLetterScreen';
  static String adminScreen = '/AdminScreen';
}

//~  pages are assiciated with GetX

final getPages = [
  GetPage(name: AppPages.splashScreen, page: () => SplashScreen()),
  GetPage(name: AppPages.homeScreen, page: () => HomeScreen()),
  GetPage(name: AppPages.aboutScreen, page: () => AboutScreen()),
  GetPage(
    name: AppPages.registerGrievanceScreen,
    page: () => RegisterGrievanceScreen(),
  ),
  GetPage(name: AppPages.trackStatusScreen, page: () => TrackStatusScreen()),
  GetPage(
    name: AppPages.visionMissionScreen,
    page: () => VisionMissionScreen(),
  ),
  GetPage(
    name: AppPages.galleryScreen,
    page: () => GalleryScreen(),
  ),
  GetPage(
    name: AppPages.developmentWorkScreen,
    page: () => DevelopmentWorkScreen(),
  ),
  GetPage(
    name: AppPages.suceessStoriesScreen,
    page: () => SuceessStoriesScreen(),
  ),
  GetPage(
    name: AppPages.contactUsScreen,
    page: () => ContactUsScreen(),
  ),
  GetPage(
    name: AppPages.newsLetterScreen,
    page: () => NewsLetterScreen(),
  ),
  GetPage(
    name: AppPages.adminScreen,
    page: () => AdminScreen(),
  )
];
