import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_controller.dart';
import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/grocery/application/controllers/grocery_controller.dart';
import 'package:untitled/app/features/grocery/application/controllers/grocery_view_contract.dart';
import 'package:untitled/app/features/grocery/presentation/widgets/deal_tile.dart';

class DealsListView extends GetView<GroceryController>
    implements GroceryViewContract {
  const DealsListView({
    Key? key,
    required this.deals,
  }) : super(key: key);

  final List<FavouriteDeal> deals;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 11).r,
      scrollDirection: Axis.horizontal,
      itemCount: deals.length,
      itemBuilder: (BuildContext context, int index) {
        final favoriteDeal = deals[index];
        return DealTile(
          favoriteDeal: favoriteDeal,
          index: index,
          onToggleFavourite: () => toggleFavourite(index),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 57.w,
        );
      },
    );
  }

  @override
  Future<void> toggleFavourite(int index) async {
    try {
      final deal = controller.deals[index];
      final isFavourite = deal.isFavourite;
      final favouriteController = Get.find<FavouriteController>();
      if (isFavourite) {
        await favouriteController.delete(deal);
        controller.deleteFromFavouriteByIndex(index);
      } else {
        await favouriteController.add(deal);
        controller.addToFavourite(index);
      }
    } catch (e) {
      print(e);
    }
  }
}
