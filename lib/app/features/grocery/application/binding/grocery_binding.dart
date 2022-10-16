import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/infrastructure/repositories/favourite_deal_repo_impl.dart';
import 'package:untitled/app/features/grocery/application/controllers/grocery_state.dart';
import 'package:untitled/app/features/grocery/infrastructure/repositories/grocery_repo_impl.dart';
import 'package:untitled/core/infrastructure/data/clients/remote_mock.dart';

import '../controllers/grocery_controller.dart';

class GroceryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GroceryController>(
      () => GroceryController(GroceryRepoImpl(RemoteMock()),
          GroceryState(GroceryLoadDataState().obs), FavouriteDealRepoImpl()),
    );
  }
}
