import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_controller.dart';
import 'package:untitled/app/features/grocery/application/controllers/grocery_controller.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/deal_tile.dart';

class FavouriteView extends GetView<FavouriteController> {
  const FavouriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<FavouriteController>(builder: (logic) {
        if (logic.state.deals.isEmpty) {
          return Center(
            child: Text('No Favourite Deals'),
          );
        }
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 11).r,
          child: ListView.separated(
            itemCount: controller.state.deals.length,
            itemBuilder: (BuildContext context, int index) {
              final deal = controller.state.deals[index];
              return SizedBox(
                height: 100.h,
                child: DealTile(
                  favoriteDeal: deal,
                  index: index,
                  onToggleFavourite: () async {
                    final result = await controller.deleteByIndex(index);
                    final groceryController = Get.find<GroceryController>();
                    groceryController.deleteFromFavourite(deal);
                  },
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 20,
              );
            },
          ),
        );
      }),
    );
  }
}
