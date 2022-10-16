import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/core/presentation/theme/colors.dart';
import 'package:untitled/core/presentation/theme/text_styles.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';

import '../controllers/grocery_controller.dart';

class GroceryView extends GetView<GroceryController> {
  const GroceryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(Get.height);
    print(791);

    print(49.h);
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                prefixIconColor: Colors.black,
                prefix: SvgPicture.asset(
                  'assets/icons/search.svg',
                  // color: Colors.black,
                ),
                prefixIcon: SvgPicture.asset(
                  'assets/icons/search.svg',
                  color: Colors.black,
                ),
                hintText: 'Search in thousands of products'),
          ),
          SizedBox(
            height: 80.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemExtent: 167.w,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 49.h,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 6, horizontal: 7).r,
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
                                'TEst TEstTEst ',
                                style: boldSp11,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                style: w500Sp9,
                                'TEstTEstTEstTEstTEstTEstTEstTEstTEstTEst',
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
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.only(left: 11, top: 21, bottom: 18).r,
              child: Text('Explore by Category'),
            ),
          ),
          SizedBox(
            height: 100.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 11).r,
              separatorBuilder: (BuildContext context, int index) => SizedBox(
                width: 22.w,
              ),
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Expanded(
                      child: CustomImage(
                        width: 70.w,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    Text('TEst')
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(
              bottom: 18.h,
              top: 40.h,
              start: 11.w,
            ),
            child: Text('Deals of the day'),
          ),
          SizedBox(
            height: 120.h,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 11).r,
              // itemExtent: ,
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 270.w,
                  child: Row(
                    children: [
                      CustomImage(
                        width: 90,
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Summer Sun Ice Cream Pack',
                                style: boldSp10,
                                maxLines: 1,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 9).r,
                                child: Text('Places 5'),
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    'assets/icons/location.svg',
                                    width: 6.w,
                                    height: 8.h,
                                  ),
                                  Text('15 Minutes Away',style: w500Sp9,),
                                  Row(
                                    children: [
                                      Text('12'),
                                      Text(
                                        '12',
                                        style: TextStyle(),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ]),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 57.w,
                );
              },
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 11).r,
            height: 160.h,
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
                    'Mega',
                    style: w500Sp11Red,
                  ),
                  Text.rich(
                    // style: TextStyle(height: -0.2),
                    //   textHeightBehavior: TextHeightBehavior(),
                      TextSpan(children: [
                    TextSpan(
                        text: 'WHOP', style: boldSp31.copyWith(color: purple)),
                    TextSpan(
                        text: 'P', style: boldSp31.copyWith(color: purple,letterSpacing: -3)),

                    TextSpan(
                      text: 'E',
                      style: boldSp31.copyWith(color: red, ),
                    ),
                    TextSpan(
                        text: 'R', style: boldSp31.copyWith(color: purple)),
                  ])),
                  Row(
                    children: [
                      Text('12', style: boldSp18Red),
                      SizedBox(width: 36.w),
                      Text('12', style: boldSp18WhiteLingThrough)
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Text('Available until 24 December 2020', style: w500Sp9)
                ],
              )
            ]),
          )
        ],
      )),
    );
  }
}
