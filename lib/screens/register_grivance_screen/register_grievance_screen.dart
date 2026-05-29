// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mukesh_mahaling/core/resources/colors.dart';

import '../../core/resources/app_text_size.dart';
import '../../core/resources/screen_size.dart';

class RegisterGrievanceScreen extends StatefulWidget {
  const RegisterGrievanceScreen({super.key});

  @override
  State<RegisterGrievanceScreen> createState() =>
      _RegisterGrievanceScreenState();
}

class _RegisterGrievanceScreenState extends State<RegisterGrievanceScreen> {
  // Create a key

  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      useShouldOverrideUrlLoading: true,
      mediaPlaybackRequiresUserGesture: false,
    ),
    android: AndroidInAppWebViewOptions(useHybridComposition: true),
    ios: IOSInAppWebViewOptions(allowsInlineMediaPlayback: true),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.statusbarColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0,),
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
                      tittle: "Register Grievance",
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
              child: InAppWebView(
                initialSettings: InAppWebViewSettings(
                  verticalScrollBarEnabled: false, // hides scrollbar
                  disableHorizontalScroll: false,
                ),
                initialOptions: InAppWebViewGroupOptions(
                  android: AndroidInAppWebViewOptions(
                    useHybridComposition: true,
                  ),
                  crossPlatform: InAppWebViewOptions(
                    useOnLoadResource: true,
                    allowFileAccessFromFileURLs: true,
                    allowUniversalAccessFromFileURLs: true,
                    useOnDownloadStart: true,
                    useShouldInterceptFetchRequest: true,
                    javaScriptCanOpenWindowsAutomatically: true,
                    javaScriptEnabled: true,
                  ),
                ),
                initialUrlRequest: URLRequest(
                  url: WebUri(
                    "https://drmukeshmahaling.in/Register/mobile",
                  ), //111.93.167.34  eurovision
                  // method: 'POST',
                  // body: Uint8List.fromList(utf8.encode(
                  //     "token=${EngineerHome.engToken.toString()}&engineerid=${EngineerHome.engineertourId.toString()}")),
                  //8  ${EngineerLogin.engineertourId.toString()}
                  // "token=${EngineerHome.engToken.toString()}&engineerid=${EngineerHome.engId.toString()}")),
                ),

                // onLoadStart: (InAppWebViewController controller, Uri? url) {
                //   setState(() {
                //     if (url.toString() == tourSuccessApi) {
                //       //! callback Url
                //       print("mmmmmmmmmmmmmmmmmmmmmmmmm " "Url matched");

                //       //close the webview
                //       //webView.goBack();

                //       //navigate to the desired screen with arguments
                //       Timer(
                //           Duration(seconds: 1),
                //           () => Navigator.of(context, rootNavigator: true).push(
                //               MaterialPageRoute(builder: (context) => EngineerHome())));
                //     }
                //   });
                // },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
