import 'package:get/get.dart';
import 'package:untitled/app/features/cart/controllers/cart_state.dart';
import 'package:untitled/app/features/cart/domain/repositories/cart_repo.dart';
import 'package:untitled/app/features/cart/infrastructure/repositories/cart_repo_impl.dart';

import '../controllers/cart_controller.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(
      () => CartController(
        CartRepoImpl(Get.find()),
        CartState(),
      ),
    );
  }
}
