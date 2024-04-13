import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/const/list.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/model/category_model.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/driver_container.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/text/text_widget.dart';

class CategoryInfo extends StatelessWidget {
  const CategoryInfo({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    //final controller = Get.put(DashboardController());

    return SafeArea(
        child: Scaffold(
      backgroundColor: AppTheme.lightAppColors.background,
      body: Column(
        children: [
          //appbar
          Container(
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: AppTheme.lightAppColors.maincolor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 1), // c  hanges position of shadow
                ),
              ],
            ),
            child: Row(
              children: [
                IconButton(
                  color: AppTheme.lightAppColors.primary,
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                  ),
                ),
                DashboardText.appBatText(categoryModel.titile),
              ],
            ),
          ),
          //list

          Container(
            margin: const EdgeInsets.all(20),
            child: Column(children: [
              SizedBox(
                width: context.screenWidth,
                height: context.screenHeight * .8,
                child: ListView.separated(
                  itemCount: categoryModel.titile == "Accepted" ||
                          categoryModel.titile == "Delivered"
                      ? 4
                      : AppConst.driver.length,
                  scrollDirection: Axis.vertical,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: context.screenHeight * 0.01,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return DriverContainer(
                      driver: AppConst.driver[index],
                    );
                  },
                ),
              ),
            ]),
          ),
        ],
      ),
    ));
  }
}
