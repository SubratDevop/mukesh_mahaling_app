// const localhost = "192.168.29.163";

abstract class UrlBuilder {
  static String baseURL = "https://drmukeshmahaling.in";
  static String registerGrivanceURL = "https://drmukeshmahaling.in/Register/mobile";
  static String grivanceTrackURL = "https://drmukeshmahaling.in/Track/mobile";
  static String buildUrl({required String endPoint}) => "$baseURL$endPoint";
}

class Api {
  //* Login Screen
  static String generateOtpURL({required String mobileNo}) =>
      "${UrlBuilder.buildUrl(endPoint: "/generateOtp")}?mobileNo=$mobileNo";
  static String loginURL({required String mobileNo, required String otp}) =>
      "${UrlBuilder.buildUrl(endPoint: "/employeeLogin")}?mobileNo=$mobileNo&otp=$otp";
}
