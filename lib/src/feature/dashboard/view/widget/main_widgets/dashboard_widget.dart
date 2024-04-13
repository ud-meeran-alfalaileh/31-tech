import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/controller/dashboard_controller.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/appbar/app_br.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/category/category_list.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/driver_list.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/see_more.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/statistic/dropdown_menu.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/statistic/statistic_list.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/text/Text_widget.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBar(),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: context.screenHeight * 0.05,
                horizontal: context.screenWidth * 0.055),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoryList(),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                DashboardText.headerText("Currently On Action :"),
                SizedBox(
                  height: context.screenHeight * 0.034,
                ),
                const DriverList(),
                const SeeMoreButton(),
                SizedBox(
                  height: context.screenHeight * 0.04,
                ),
                Row(
                  children: [
                    DashboardText.headerText("Latest Statistics :"),
                    const Spacer(),
                    const DashboardDropDownMenu(), // Example Containers
                  ],
                ),
                Obx(
                  () => controller.container1Visible.value == true
                      ? const StatisticList()
                      : Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SpinKitFadingCircle(
                                color: AppTheme.lightAppColors.mainTextcolor,
                                size: 50.0,
                              ),
                              Text(
                                "Just a sec",
                                style: TextStyle(
                                    color:
                                        AppTheme.lightAppColors.mainTextcolor),
                              )
                            ],
                          ),
                        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
