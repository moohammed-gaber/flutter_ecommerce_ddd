import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/cart/application/binding/cart_binding.dart';
import 'package:untitled/app/features/cart/application/controller/cart_controller.dart';
import 'package:untitled/app/features/cart/application/controller/cart_state.dart';
import 'package:untitled/app/features/cart/presentation/pages/cart_view.dart';
import 'package:untitled/app/features/favourite_deal/application/binding/favourite_binding.dart';
import 'package:untitled/app/features/favourite_deal/presentation/pages/favourite_view.dart';
import 'package:untitled/app/features/grocery/application/binding/grocery_binding.dart';
import 'package:untitled/app/features/grocery/presentation/pages/grocery_view.dart';
import 'package:untitled/app/features/home/application/controllers/home_view_contract.dart';
import 'package:untitled/app/features/news/application/binding/news_binding.dart';
import 'package:untitled/app/features/news/presentation/pages/news_view.dart';
import 'package:untitled/core/application/routes/app_pages.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';

import '../../application/controllers/home_controller.dart';

class HomeView extends GetView<HomeController> implements HomeViewContract {
  HomeView({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();
  final indexToRoute = {
    0: Routes.GROCERY,
    1: Routes.NEWS,
    3: Routes.FAVOURITE,
    4: Routes.CART,
  };

  @override
  StatelessElement createElement() {
    controller.view = this;
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (navigatorKey.currentState?.canPop() ?? false) {
          navigatorKey.currentState?.pop();
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: darkBlue, width: 1),
                  shape: BoxShape.circle),
              height: 50,
              width: 50,
            )
          ],
          title: SizedBox(
            width: 122.w,
            height: 34.h,
            child: Stack(
              children: [
                Image.asset('assets/clips/clip.png'),
                Center(
                  child: Row(
                    children: [
                      SizedBox(width: 10.w),
                      Image.asset(
                        'assets/icons/gps.png',
                        width: 12.w,
                        height: 16.h,
                        fit: BoxFit.cover,
                        color: Colors.white,
                      ),
                      SizedBox(width: 7.w),
                      Text('Mustafa St.', style: w500Sp11),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            Get.toNamed(Routes.CART);
          },
          child: Stack(
            children: [
              Image.asset('assets/icons/cart.png'),
              GetBuilder<CartController>(
                  id: 'total',
                  builder: (logic) {
                    final total = logic.state.loadDataState.value;
                    if (total is CartDataLoadSuccess)
                      return Text(
                        logic.cart.total.priceWithCurrency,
                        style: w400Sp11White,
                      );
                    return SizedBox();
                  }),
            ],
          ),
        ),
        bottomNavigationBar: GetBuilder<HomeController>(builder: (logic) {
          return BottomNavigationBar(
            onTap: controller.bottomNavigationItemPressed,
            unselectedIconTheme: IconThemeData(color: grey),
            unselectedLabelStyle: w400Sp7,
            unselectedFontSize: 7.sp,
            selectedFontSize: 7.sp,
            currentIndex: logic.state.selectedBottomNavIndex,
            selectedIconTheme: IconThemeData(color: red),
            selectedItemColor: red,
            backgroundColor: Colors.white,
            showUnselectedLabels: true,
            unselectedItemColor: Color(0xff949494),
            items: [
              BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icons/grocery.png',
                  ),
                  label: 'Grocery'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/notification.png'),
                  label: 'News'),
              BottomNavigationBarItem(icon: SizedBox.shrink(), label: ''),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/love.png'),
                  label: 'Favourites'),
              BottomNavigationBarItem(
                  icon: Image.asset('assets/icons/wallet.png'), label: 'Cart')
            ],
          );
        }),
        body: Navigator(
            initialRoute: Routes.GROCERY,
            key: navigatorKey,
            onPopPage: (x, y) {
              return true;
            },
            onGenerateRoute: (RouteSettings settings) {
              switch (settings.name) {
                case Routes.GROCERY:
                  return GetPageRoute(
                      settings: settings,
                      binding: GroceryBinding(),
                      page: () => GroceryView(),
                      routeName: Routes.GROCERY);
                case Routes.CART:
                  return GetPageRoute(
                      binding: CartBinding(),
                      settings: settings,
                      page: () => CartView(),
                      routeName: Routes.CART);

                case Routes.FAVOURITE:
                  return GetPageRoute(
                      binding: FavouriteBinding(),
                      settings: settings,
                      page: () => FavouriteView(),
                      routeName: Routes.FAVOURITE);
                case Routes.NEWS:
                  return GetPageRoute(
                      binding: NewsBinding(),
                      settings: settings,
                      page: () => NewsView(),
                      routeName: Routes.NEWS);

                default:
              }
            }),
/*
        body: Center(
          child: Container(
            // color: Colors.red,
            child: Image.asset(
                'assets/icons/grocery'
                '.png',
                // color: Colors.white,
                // allowDrawingOutsideViewBox: true,
                fit: BoxFit.cover,
                // semanticsLabel: 'My SVG Picture',

                height: 500.h,
                width: 500.w),
          ),
        ),
*/
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [TextField()],
      )),
    );
  }

  @override
  void navigate(int index) {
    print('navigate $index');
    navigatorKey.currentState!.pushNamed(indexToRoute[index]!);
  }
}
