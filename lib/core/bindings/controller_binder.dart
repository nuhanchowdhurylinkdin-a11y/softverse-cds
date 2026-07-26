import 'package:get/get.dart';

import '../controller/theme_controller.dart';
import '../../features/cds_home/controller/cds_home_controller.dart';
import '../../features/home/controller/home_controller.dart';
import '../../features/pair/controller/pair_controller.dart';
import '../../features/splash/controller/splash_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeController>(() => ThemeController(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.lazyPut<SplashController>(() => SplashController(), fenix: true);
    Get.lazyPut<PairController>(() => PairController(), fenix: true);
    Get.lazyPut<CdsHomeController>(() => CdsHomeController(), fenix: true);
  }
}
