import 'package:get/get.dart';
import 'package:untitled/app/features/news/application/controllers/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewsController>(
      () => NewsController(),
    );
  }
}
