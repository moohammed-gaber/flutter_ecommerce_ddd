import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:untitled/app/features/cart/presentation/widgets/cart_tile.dart';

import '../../controllers/cart_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          Expanded(
            child: ListView.separated(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return CartTile();
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 35,
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
