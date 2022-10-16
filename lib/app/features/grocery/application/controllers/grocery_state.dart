import 'package:get/get.dart';
import 'package:untitled/app/features/grocery/domain/entities/grocery_data.dart';

class GroceryState {
  final Rx<GroceryLoadDataState> loadDataState;

  GroceryState(this.loadDataState) {
    // loadDataState = GroceryLoadDataState().obs;
  }

// copy with
  GroceryState copyWith({
    GroceryLoadDataState? loadDataState,
  }) {
    return GroceryState(
      loadDataState?.obs ?? this.loadDataState,
    );
  }
}

class GroceryLoadDataState {}

class GroceryDataInitial extends GroceryLoadDataState {}

class GroceryDataLoadInProgress extends GroceryLoadDataState {}

class GroceryDataLoadSuccess extends GroceryLoadDataState {
  final GroceryData groceryData;

  GroceryDataLoadSuccess(this.groceryData);

  // copy with
  GroceryDataLoadSuccess copyWith({
    GroceryData? groceryData,
  }) {
    return GroceryDataLoadSuccess(
      groceryData ?? this.groceryData,
    );
  }
}

class GroceryDataLoadFailure extends GroceryLoadDataState {}
