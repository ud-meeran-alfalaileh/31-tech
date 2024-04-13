import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/controller/dashboard_controller.dart';

class DashboardDropDownMenu extends StatelessWidget {
  const DashboardDropDownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxString selectedOption = 'Today'.obs;
    final controller = Get.put(DashboardController());
    return Container(
      height: context.screenHeight * 0.035,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(color: AppTheme.lightAppColors.bordercolor),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0), // Adjust padding as needed
          child: Obx(
            () => DropdownButton<String>(
              value: selectedOption.value,
              onChanged: (String? newValue) {
                selectedOption.value = newValue!;
                controller.removeContainersAndShowProgress();
              },
              underline: Container(), // Remove underline
              items: <String>['Today', 'Yesterday', 'Last 7 days']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Center(
                    child: Text(
                      value,
                      style: const TextStyle(
                        fontSize: 9,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
