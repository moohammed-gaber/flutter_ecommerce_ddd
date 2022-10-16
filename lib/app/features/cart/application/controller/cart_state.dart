import 'package:get/get.dart';
import 'package:untitled/app/features/cart/domain/entities/cart_data.dart';

class CartState {
  late final Rx<CartLoadDataState> loadDataState;

  CartState() {
    loadDataState = CartLoadDataState().obs;
  }
// initial
}

class CartLoadDataState {}

class CartDataInitial extends CartLoadDataState {}

class CartDataLoadInProgress extends CartLoadDataState {}

class CartDataLoadSuccess extends CartLoadDataState {
  final CartData cart;

  CartDataLoadSuccess(this.cart);

  // copy with
  CartDataLoadSuccess copyWith({
    CartData? cart,
  }) {
    return CartDataLoadSuccess(
      cart ?? this.cart,
    );
  }
}

class CartDataLoadFailure extends CartLoadDataState {}
