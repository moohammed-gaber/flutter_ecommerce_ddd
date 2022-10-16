import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/application/controllers/favourite_state.dart';
import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/favourite_deal/domain/repositories/favourite_deal_repo.dart';
import 'package:untitled/app/features/grocery/domain/entities/deal.dart';

class FavouriteController extends GetxController {
  //TODO: Implement FavouriteController
  FavouriteState state;
  final FavouriteDealRepo favouriteRepo;

  final count = 0.obs;

  FavouriteController(this.state, this.favouriteRepo);

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> add(FavouriteDeal deal) async {
    final result = await favouriteRepo.add(deal.deal);
    state = state
        .copyWith(deals: [...state.deals, deal.copyWith(isFavourite: true)]);
  }

  Future<void> deleteByIndex(int index) async {
    final deals =state.deals;
    final deal = deals[index];
    final result = await favouriteRepo.delete(deal.deal.id);
    final newDeals = state.deals;
    newDeals.removeAt(index);
    state = state.copyWith(deals: newDeals);
    print(state.deals);
    update();

  }

  Future<void> delete(FavouriteDeal deal) async {
    final result = await favouriteRepo.delete(deal.deal.id);
    final newDeals = state.deals;
    newDeals.removeWhere((element) => element.deal.id == deal.deal.id);
    state = state.copyWith(deals: newDeals);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
