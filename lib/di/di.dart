import 'package:get/get.dart';

import '../presentation/homescreen/home_screen_controller.dart';

class DependencyInjection {
  static init() {
    Get.lazyPut(() => HomeScreenController(), fenix: true);
  }
}
