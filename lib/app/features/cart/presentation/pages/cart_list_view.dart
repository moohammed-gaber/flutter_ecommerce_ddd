import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/app/features/cart/controllers/cart_controller.dart';
import 'package:untitled/app/features/cart/domain/entities/cart_product.dart';
import 'package:untitled/app/features/cart/presentation/widgets/quantity_button.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';

class CartListView extends GetView<CartController> {
  const CartListView({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<ProductInCart> products;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,

      itemBuilder: (BuildContext context, int index) {
        final product = products[index];
        return SizedBox(
          height: 75.h,
          child: Row(
            children: [
              CustomImage(
                width: 56.w,
              ),
              SizedBox(
                width: 25.w,
              ),
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name),
                      Text(
                        product.description,
                        style: w500Sp9.copyWith(color: Color(0xff8D97A4)),
                      ),
                      Text(
                        product.totalPrice.priceWithCurrency,
                        style: w500Sp18Red,
                      ),
                    ]),
              ),
              QuantityButton(
                icon: Image.asset('assets/icons/minus.png'),
                onPressed: () {
                  controller.decreaseQuantity(index);
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 17).r,
                child: Text(product.quantity.toString()),
              ),
              QuantityButton(
                icon: Image.asset('assets/icons/plus.png'),
                onPressed: () {
                  controller.increaseQuantity(index);
                },
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(
          height: 35,
        );
      },
    );
  }
}
