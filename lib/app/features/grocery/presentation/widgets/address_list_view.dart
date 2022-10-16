import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/features/grocery/domain/entities/address.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';

class AddressListView extends StatelessWidget {
  const AddressListView({
    Key? key,
    required this.addresses,
  }) : super(key: key);

  final List<Address> addresses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: addresses.length,
      itemExtent: 167.w,
      itemBuilder: (BuildContext context, int index) {
        final address = addresses[index];
        return SizedBox(
          height: 49.h,
          child: Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: offWhite, width: 1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 7).r,
              child: Row(
                children: [
                  CustomImage(
                    height: 39.h,
                    width: 38.w,
                  ),
                  SizedBox(
                    width: 13.w,
                  ),
                  Expanded(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        address.name,
                        style: boldSp11,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        style: w500Sp9,
                        address.address,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      )
                    ],
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
