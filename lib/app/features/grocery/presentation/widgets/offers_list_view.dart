import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/features/grocery/domain/entities/offer.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';

class OffersListView extends StatelessWidget {
  const OffersListView({
    Key? key,
    required this.offers,
  }) : super(key: key);

  final List<Offer> offers;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: offers.length,
      itemBuilder: (BuildContext context, int index) {
        final offer = offers[index];
        print(offer.availableUntil.formatDate(offer.availableUntil.input));
        return Container(
          margin: EdgeInsets.symmetric(horizontal: 11).r,
          decoration: BoxDecoration(
              color: pink, borderRadius: BorderRadius.circular(10)),
          child: Row(children: [
            SizedBox(
              width: 153.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 18.h),
                Text(
                  offer.title,
                  style: w500Sp11Red,
                ),
                Text.rich(
                    // style: TextStyle(height: -0.2),
                    //   textHeightBehavior: TextHeightBehavior(),
                    TextSpan(children: [
                  TextSpan(
                      text: offer.subtitle.firstLetters,
                      style: boldSp31Pink.copyWith(color: purple)),
                  TextSpan(
                      text: offer.subtitle.beforeLast2Letter,
                      style: boldSp31Pink.copyWith(
                          color: purple, letterSpacing: -3)),
                  TextSpan(
                    text: offer.subtitle.beforeLastLetter,
                    style: boldSp31Pink.copyWith(
                      color: red,
                    ),
                  ),
                  TextSpan(
                      text: offer.subtitle.lastLetter,
                      style: boldSp31Pink.copyWith(color: purple)),
                ])),
                Row(
                  children: [
                    Text(offer.price.priceWithCurrency, style: boldSp18Pink),
                    SizedBox(width: 36.w),
                    Text(offer.oldPrice.priceWithCurrency,
                        style: boldSp18WhiteLingThrough)
                  ],
                ),
                //24 December 2020

                SizedBox(height: 16.h),
                Text('Available until ${offer.availableUntil.formattedDate}',
                    style: w500Sp9),
                SizedBox(height: 11.h),
              ],
            )
          ]),
        );
      },
    );
  }
}
