import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/favourite_deal/domain/repositories/favourite_deal_repo.dart';
import 'package:untitled/app/features/grocery/domain/entities/deal.dart';

class FavouriteDealRepoImpl extends FavouriteDealRepo {
  @override
  Future<void> add(Deal deal) {
    return Future.value();
  }

  @override
  Future<void> delete(String id) {
    return Future.value();
  }
}
