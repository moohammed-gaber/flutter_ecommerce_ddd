import 'package:untitled/app/features/grocery/domain/entities/deal.dart';

abstract class FavouriteDealRepo {
  Future<void> add(Deal deal);

  Future<void> delete(String id);
}
