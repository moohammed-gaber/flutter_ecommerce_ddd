import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/cart/application/controller/cart_controller.dart';
import 'package:untitled/app/features/cart/application/controller/cart_state.dart';
import 'package:untitled/app/features/cart/presentation/pages/cart_list_view.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 45, bottom: 36).r,
            child: Text('Cart'),
          ),
          Obx(() {
            final loadState = controller.state.loadDataState.value;

            if (loadState is CartDataLoadInProgress) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if (loadState is CartDataLoadFailure) {
              return Center(
                child: OutlinedButton(
                  onPressed: controller.loadData,
                  child: Text('Retry'),
                ),
              );
            }
            if (loadState is CartDataLoadSuccess) {
              final cart = loadState.cart;
              final products = cart.products;
              return Expanded(
                child: CartListView(products: products),
              );
            }
            throw UnimplementedError();
          }),
        ]),
      ),
    );
  }
}
