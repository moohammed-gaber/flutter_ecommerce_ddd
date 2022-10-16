import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/grocery/domain/entities/deal.dart';

abstract class FavouriteDealRepo {
  Future<void> add(Deal deal);

  Future<void> delete(String id);
}
