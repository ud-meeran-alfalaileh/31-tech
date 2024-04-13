import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/const/list.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/category/category_info.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: () {
          Get.to(CategoryInfo(categoryModel: AppConst.categoryList[1]));
        },
        child: Container(
          width: 90,
          height: 25,
          decoration: BoxDecoration(
            color: AppTheme.lightAppColors.primary,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(50)),
                    color: Color(0xffD4E3EC)),
                child: Center(
                  child: Icon(
                    Icons.remove_red_eye,
                    color: AppTheme.lightAppColors.primary,
                    size: 15,
                  ),
                ),
              ),
              Container(
                width: 60,
                height: 30,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(50)),
                    color: Color(0xffDDECF6)),
                child: Center(
                  child: Text(
                    "See all",
                    style: TextStyle(
                        color: AppTheme.lightAppColors.primary, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
