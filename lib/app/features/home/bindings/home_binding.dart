import 'package:get/get.dart';
import 'package:untitled/app/features/home/presentation/manager/home_state.dart';

import '../presentation/manager/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(HomeState.initial()),
    );
  }
}
