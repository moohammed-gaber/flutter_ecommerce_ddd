import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/cart/presentation/pages/cart_view.dart';
import 'package:untitled/app/features/grocery/bindings/grocery_binding.dart';
import 'package:untitled/app/features/grocery/views/grocery_view.dart';
import 'package:untitled/core/application/routes/app_pages.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        SvgPicture.asset('assets/icons/plus.svg',
            fit: BoxFit.contain, color: red, height: 100.h, width: 50.w),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        unselectedIconTheme: IconThemeData(color: grey),
        unselectedLabelStyle: w400Sp7,
        unselectedFontSize: 7.sp,
        selectedFontSize: 7.sp,
        selectedIconTheme: IconThemeData(color: red),
        selectedItemColor: red,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        unselectedItemColor: Color(0xff949494),
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/grocery.svg',
                color: red,
              ),
              label: 'Grocery'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/notification.svg'),
              label: 'News'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/love.svg'),
              label: 'Favourites'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/cart.svg'), label: 'Cart')
        ],
      ),
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
                    settings: settings,
                    page: () => CartView(),
                    routeName: Routes.CART);

              default:
            }
          }),
/*
      body: Center(
        child: Container(
          // color: Colors.red,
          child: SvgPicture.asset(
              'assets/icons/grocery'
              '.svg',
              // color: Colors.white,
              // allowDrawingOutsideViewBox: true,
              fit: BoxFit.cover,
              // semanticsLabel: 'My SVG Picture',

              height: 500.h,
              width: 500.w),
        ),
      ),
*/
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
}
