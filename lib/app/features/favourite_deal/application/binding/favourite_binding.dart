import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_state.dart';
import 'package:untitled/app/features/favourite_deal/infrastructure/repositories/favourite_deal_repo_impl.dart';

import '../controllers/favourite_controller.dart';

class FavouriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FavouriteController>(
      () => FavouriteController(
          // infrastructure
          FavouriteState.initial(),
          FavouriteDealRepoImpl()),
    );
  }
}
