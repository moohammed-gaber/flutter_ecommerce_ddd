import 'package:get/get.dart';
import 'package:untitled/app/features/cart/application/controller/cart_events.dart';
import 'package:untitled/app/features/cart/application/controller/cart_state.dart';
import 'package:untitled/app/features/cart/domain/entities/cart_data.dart';
import 'package:untitled/app/features/cart/domain/repositories/cart_repo.dart';
import 'package:untitled/core/domain/value_objects/price_value_object.dart';

class CartController extends GetxController implements CartEvents {
  //TODO: Implement CartController

  final count = 0.obs;
  final CartRepo cartRepo;
  CartState state;

  CartController(this.cartRepo, this.state);

  Future<void> loadData() async {
    state.loadDataState.value = CartDataLoadInProgress();
    try {
      final result = await cartRepo.getCart();
      state.loadDataState.value = CartDataLoadSuccess(result);
    } catch (e) {
      state.loadDataState.value = CartDataLoadFailure();
    }
  }

  @override
  void onInit() {
    super.onInit();
    loadData().then((value) => update(['total']));
  }

  CartData get cart => (state.loadDataState.value as CartDataLoadSuccess).cart;

  @override
  void decreaseQuantity(int productIndex) {
    final products = cart.products;
    final product = products[productIndex];
    if (product.quantity > 1) {
      final products = cart.products;
      final product = products[productIndex];
      final newQuantity = product.quantity - 1;
      final newProduct = product.copyWith(
          quantity: newQuantity,
          totalPrice:
              Price(product.getTotalPrice(product.pricePerOne, newQuantity)));
      products[productIndex] = newProduct;
    } else {
      products.removeAt(productIndex);
    }
    final newCartProducts = cart.copyWith(products: products);
    state.loadDataState.value = CartDataLoadSuccess(
        newCartProducts.copyWith(total: newCartProducts.getTotalPrice()));
    update(['total']);
  }

  @override
  void increaseQuantity(int productIndex) {
    final products = cart.products;
    final product = products[productIndex];
    final newQuantity = product.quantity + 1;
    final newProduct = product.copyWith(
        quantity: newQuantity,
        totalPrice:
            Price(product.getTotalPrice(product.pricePerOne, newQuantity)));
    products[productIndex] = newProduct;
    final newCartProducts = cart.copyWith(products: products);
    state.loadDataState.value = CartDataLoadSuccess(
        newCartProducts.copyWith(total: newCartProducts.getTotalPrice()));
    update(['total']);
  }
}
