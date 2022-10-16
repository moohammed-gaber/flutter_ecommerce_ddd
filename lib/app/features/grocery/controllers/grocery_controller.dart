import 'package:get/get.dart';
import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/app/features/favourite_deal/domain/repositories/favourite_deal_repo.dart';
import 'package:untitled/app/features/grocery/controllers/grocery_state.dart';
import 'package:untitled/app/features/grocery/domain/entities/grocery_data.dart';
import 'package:untitled/app/features/grocery/domain/repositories/grocery_repo.dart';

class GroceryController extends GetxController {
  final GroceryRepo repo;
  GroceryState state;

  final FavouriteDealRepo favouriteRepo;

  GroceryController(this.repo, this.state, this.favouriteRepo);

  Future<void> loadData() async {
    state.loadDataState.value = GroceryDataLoadInProgress();
    try {
      final result = await repo.getGroceryData();
      state.loadDataState.value = GroceryDataLoadSuccess(result);
    } catch (e) {
      state.loadDataState.value = GroceryDataLoadFailure();
      rethrow;
    }
  }

  //
  GroceryData get groceryData =>
      (state.loadDataState.value as GroceryDataLoadSuccess).groceryData;

  GroceryDataLoadSuccess get groceryDataLoadSuccess =>
      (state.loadDataState.value as GroceryDataLoadSuccess);

  List<FavouriteDeal> get deals => groceryData.deals;

  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  void addToFavourite(int index) async {
    final deal = deals[index];
    final newDeals = deals;
    newDeals[index] = deal.copyWith(isFavourite: true);
    state = state.copyWith(
        loadDataState:
            GroceryDataLoadSuccess(groceryData.copyWith(deals: newDeals)));

    update();
  }

  void deleteFromFavourite(FavouriteDeal favouriteDeal) async {
    final index =
        deals.indexWhere((element) => element.deal.id == favouriteDeal.deal.id);
    final deal = deals[index];
    final newDeals = deals;
    newDeals[index] = deal.copyWith(isFavourite: false);
    state = state.copyWith(
        loadDataState:
            GroceryDataLoadSuccess(groceryData.copyWith(deals: newDeals)));
    update();
  }

  void deleteFromFavouriteByIndex(int index) async {
    final deal = deals[index];
    final newDeals = deals;
    newDeals[index] = deal.copyWith(isFavourite: false);
    state = state.copyWith(
        loadDataState:
            GroceryDataLoadSuccess(groceryData.copyWith(deals: newDeals)));
    update();
  }
}
