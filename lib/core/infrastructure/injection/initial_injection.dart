import 'package:get/get.dart';
import 'package:untitled/app/features/cart/application/controller/cart_controller.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_controller.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_state.dart';
import 'package:untitled/app/features/favourite_deal/infrastructure/repositories/favourite_deal_repo_impl.dart';
import 'package:untitled/core/infrastructure/data/clients/local_mock.dart';
import 'package:untitled/core/infrastructure/data/clients/remote_mock.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/cart/application/controller/cart_state.dart';
import 'package:untitled/app/features/cart/infrastructure/repositories/cart_repo_impl.dart';

class InitialInjection extends Bindings {
  @override
  void dependencies() {
    Get.put(LocalMock(), permanent: true);
    Get.put(RemoteMock(), permanent: true);
    Get.put((FavouriteDealRepoImpl()), permanent: true);
    Get.put(
        ((FavouriteController(
            // infrastructure
            FavouriteState.initial(),
            FavouriteDealRepoImpl()))),
        permanent: true);
    Get.put(
        CartController(
          CartRepoImpl(Get.find()),
          CartState(),
        ),
        permanent: true);
  }
}
