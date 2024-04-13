import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/const/list.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/category/category_info.dart';

import 'category_container.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.1,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: AppConst.categoryList.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: context.screenWidth * 0.03,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Get.to(CategoryInfo(
                categoryModel: AppConst.categoryList[index],
              ));
            },
            child:
                DashboardContainer(categoryModel: AppConst.categoryList[index]),
          );
        },
      ),
    );
  }
}
