import 'package:get/get.dart';
import 'package:untitled/app/features/home/application/controllers/home_state.dart';

import 'controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(HomeState.initial()),
    );
  }
}
