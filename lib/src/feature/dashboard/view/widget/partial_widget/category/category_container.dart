import 'package:flutter/material.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/model/category_model.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/text/text_widget.dart';

class DashboardContainer extends StatelessWidget {
  const DashboardContainer({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.screenWidth * 0.2,
      height: context.screenHeight * 0.3,
      decoration: BoxDecoration(
        color: AppTheme.lightAppColors.maincolor,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            categoryModel.img,
            width: 25,
          ),
          SizedBox(
            height: context.screenHeight * 0.01,
          ),
          DashboardText.containerText(categoryModel.titile)
        ],
      ),
    );
  }
}
