import 'package:get/get.dart';
import '../features/cds_home/views/screens/cds_home_screen.dart';
import '../features/home/views/screens/home_screen.dart';
import '../features/pair/views/screens/pair_screen.dart';
import '../features/splash/views/screens/splash_screen.dart';

class AppRoute {
  static String splashScreen = "/splashScreen";
  static String homeScreen = "/homeScreen";
  static String loginScreen = "/loginScreen";
  static String dashboardScreen = "/dashboardScreen";
  static String pairScreen = "/pairScreen";
  static String cdsHomeScreen = "/cdsHomeScreen";

  static String getSplashScreen() => splashScreen;

  static String getHomeScreen() => homeScreen;

  static String getLoginScreen() => loginScreen;

  static String getDashboardScreen() => dashboardScreen;

  static String getPairScreen() => pairScreen;

  static String getCdsHomeScreen() => cdsHomeScreen;

  static List<GetPage> routes = [
    GetPage(name: splashScreen, page: () => const SplashScreen()),
    GetPage(name: homeScreen, page: () => const HomeScreen()),
    GetPage(name: pairScreen, page: () => const PairScreen()),
    GetPage(name: cdsHomeScreen, page: () => const CdsHomeScreen()),
  ];
}
