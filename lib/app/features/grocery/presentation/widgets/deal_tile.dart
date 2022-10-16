import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/features/favourite_deal/domain/entities/favourite_deal.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';

class DealTile extends StatelessWidget {
  const DealTile({
    Key? key,
    required this.favoriteDeal,
    required this.onToggleFavourite,
    required this.index,
  }) : super(key: key);

  final FavouriteDeal favoriteDeal;
  final VoidCallback onToggleFavourite;
  final int index;

  @override
  Widget build(BuildContext context) {
    final deal = favoriteDeal.deal;
    return SizedBox(
      width: 270.w,
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              CustomImage(
                width: 90,
              ),
              Positioned(
                top: 0,
                left: -8,
                child: InkWell(
                  onTap: () {
                    onToggleFavourite();
                  },
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: grey),
                        shape: BoxShape.circle),
                    child: Center(
                      child: Icon(
                        favoriteDeal.isFavourite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color:
                            favoriteDeal.isFavourite ? Colors.red : Colors.grey,
                        size: 12,
                      ),
                      /*Image.asset(
                        'assets/icons/love.png',
                        width: 9.w,
                        height: 9.h,
                        color: favoriteDeal.isFavourite
                            ? Colors.red
                            : Colors.grey,
                      )*/
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 12.w,
          ),
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                deal.name,
                style: boldSp10,
                maxLines: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9).r,
                child: Text('Pieces ${deal.piecesCount}'),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        'assets/icons/location.png',
                        width: 6.w,
                        height: 8.h,
                      ),
                      // like upper left
                    ],
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    deal.timeAway,
                    style: w500Sp9,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    deal.price.priceWithCurrency,
                    style: boldSp13Pink,
                  ),
                  SizedBox(
                    width: 17.w,
                  ),
                  Text(
                    deal.priceBeforeDiscount!.priceWithCurrency,
                    style: boldSp13Pink,
                  )
                ],
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
