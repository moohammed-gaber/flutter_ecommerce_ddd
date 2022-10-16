import 'package:flutter/material.dart';
import 'package:untitled/app/features/cart/presentation/widgets/quantity_button.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartTile extends StatelessWidget {
  const CartTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Product Name'),
              Text(
                '173 g',
                style: w500Sp9.copyWith(color: Color(0xff8D97A4)),
              ),
              Text(
                '173 g',
                style: w500Sp18Red,
              ),
            ]),
          ),
          QuantityButton(
            icon: SizedBox(),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17).r,
            child: Text('2'),
          ),
          QuantityButton(
            icon: SizedBox(),
            onPressed: () {},
          ),

        ],
      ),
    );
  }
}
