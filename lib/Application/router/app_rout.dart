import 'package:erm/Application/View/BottomNavigationBar/bottom_navigation_bar.dart';
import 'package:erm/Application/View/LoginScreen/login_screen.dart';
import 'package:erm/Application/View/OtpVerification/otp_verification_screen.dart';
import 'package:erm/Application/View/SplashScreen/splash_screen.dart';
import 'package:erm/Web/view/main_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splashScreen = "/splashScreen";
  static const String loginScreen = "/loginScreen";
  static const String otpVerificationScreen = "/otpVerificationScreen";
  static const String homeScreen = "/homeScreen";
}

List<GetPage<dynamic>> getPages = [
  GetPage(name: AppRoutes.splashScreen, page: () => SplashScreen()),
  GetPage(name: AppRoutes.loginScreen, page: () => LoginScreen()),
  GetPage(
      name: AppRoutes.otpVerificationScreen,
      page: () => OtpVerificationScreen()),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => GetPlatform.isDesktop
          ? WebMainScreen()
          : BottomNavigationBarScreen()),
];
