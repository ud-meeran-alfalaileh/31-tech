import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/const/list.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/feature/dashboard/controller/dashboard_controller.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/driver_container.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DashboardController());

    return Obx(
      () => SizedBox(
        width: context.screenWidth,
        height: context.screenHeight * .4,
        child: ListView.separated(
          itemCount: controller.itemCont.value,
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
    );
  }
}
