import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await Future.delayed(const Duration(seconds: 1));
    Get.toNamed("HomeScreen");
  }
}
