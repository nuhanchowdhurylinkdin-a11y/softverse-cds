import 'package:get/get.dart';

import '../features/auth/views/screens/login_screen.dart';
import '../features/home/views/screens/home_screen.dart';
import '../features/splash/views/screens/splash_screen.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String homeScreen = "/homeScreen";
  static String loginScreen = "/loginScreen";

  static String getSplashScreen() => splashScreen;

  static String getHomeScreen() => homeScreen;

  static String getLoginScreen() => loginScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
  ];
}
