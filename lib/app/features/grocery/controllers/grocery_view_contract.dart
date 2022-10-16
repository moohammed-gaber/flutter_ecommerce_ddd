import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';

abstract class GroceryViewContract {
  Future<void> toggleFavourite(int index);
}
