import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/application/binding/favourite_binding.dart';

import '../../../app/features/cart/bindings/cart_binding.dart';
import '../../../app/features/cart/presentation/pages/cart_view.dart';
import '../../../app/features/grocery/bindings/grocery_binding.dart';
import '../../../app/features/grocery/views/grocery_view.dart';
import '../../../app/features/home/bindings/home_binding.dart';
import '../../../app/features/home/presentation/pages/home_view.dart';
import '../../../app/features/home/presentation/pages/home_view.dart';
import '../../../app/features/favourite_deal/presentation/pages/favourite_view.dart';
import '../../../app/modules/news/bindings/news_binding.dart';
import '../../../app/modules/news/views/news_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
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
    GetPage(
      name: _Paths.NEWS,
      page: () => const NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.FAVOURITE,
      page: () => const FavouriteView(),
      binding: FavouriteBinding(),
    ),
  ];
}
