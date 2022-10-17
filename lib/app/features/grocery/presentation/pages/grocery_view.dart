import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/grocery/application/controllers/grocery_state.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/offers_list_view.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/address_list_view.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/category_list_view.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/deals_list_view.dart';

import '../../application/controllers/grocery_controller.dart';

class GroceryView extends GetView<GroceryController> {
  const GroceryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        final loadState = controller.state.loadDataState.value;

        if (loadState is GroceryDataLoadInProgress) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (loadState is GroceryDataLoadFailure) {
          return Center(
            child: OutlinedButton(
              onPressed: controller.loadData,
              child: Text('Retry'),
            ),
          );
        }
        if (loadState is GroceryDataLoadSuccess) {
          final data = loadState.groceryData;
          final addresses = data.addresses;
          final categories = data.categories;
          final deals = data.deals;
          final offers = data.offers;
          return SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 11).r,
                child: TextField(
                  decoration: InputDecoration(
                      prefix: Image.asset(
                        'assets/icons/search.png',
                        // color: Colors.black,
                      ),
                      prefixIcon: Image.asset(
                        'assets/icons/search.png',
                        color: Colors.black,
                      ),
                      hintText: 'Search in thousands of products'),
                ),
              ),
              SizedBox(
                height: 80.h,
                child: AddressListView(addresses: addresses),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 11, top: 21, bottom: 18).r,
                  child: Text('Explore by Category'),
                ),
              ),
              SizedBox(
                height: 100.h,
                child: CategoryListView(categories: categories),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                  bottom: 18.h,
                  top: 40.h,
                  start: 11.w,
                ),
                child: Text('Deals of the day'),
              ),
              SizedBox(
                height: 120.h,
                child: GetBuilder<GroceryController>(builder: (logic) {
                  return DealsListView(deals: deals);
                }),
              ),
              SizedBox(
                height: 30.h,
              ),
              SizedBox(
                height: 160.h,
                child: OffersListView(offers: offers),
              ),
              SizedBox(
                height: 60,
              )
            ],
          ));
        }
        throw UnimplementedError();
      }),
    );
  }
}
