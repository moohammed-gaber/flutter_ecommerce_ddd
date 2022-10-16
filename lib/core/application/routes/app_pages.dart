import 'package:get/get.dart';

import '../../../app/features/home/views/home_view.dart';
import '../../../app/features/cart/bindings/cart_binding.dart';
import '../../../app/features/cart/presentation/pages/cart_view.dart';
import '../../../app/features/grocery/bindings/grocery_binding.dart';
import '../../../app/features/grocery/views/grocery_view.dart';
import '../../../app/features/home/bindings/home_binding.dart';
import '../../../app/features/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () =>  HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.GROCERY,
      page: () => const GroceryView(),
      binding: GroceryBinding(),
    ),
  ];
}
