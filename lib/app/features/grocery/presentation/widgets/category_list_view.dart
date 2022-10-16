import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:untitled/app/features/grocery/domain/entities/category.dart';
import 'package:untitled/core/presentation/widgets/custom_image.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
    required this.categories,
  }) : super(key: key);

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 11).r,
      separatorBuilder: (BuildContext context, int index) => SizedBox(
        width: 22.w,
      ),
      itemCount: categories.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final category = categories[index];
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
            Text(category.name)
          ],
        );
      },
    );
  }
}
