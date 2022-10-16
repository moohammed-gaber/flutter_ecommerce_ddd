import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../application/controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  const NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller =Get.find<NewsController>();
    return Scaffold(
      body: Center(
        child: Text(
          'NewsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
