import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/model/driver_model.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/driver_icon.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/driver/info_dialog.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/text/text_widget.dart';
import 'package:tech_31/src/feature/map/view/google_map_widget.dart';

class DriverContainer extends StatelessWidget {
  const DriverContainer({super.key, required this.driver});
  final Driver driver;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: context.screenWidth * 0.015,
        vertical: context.screenHeight * 0.015,
      ),
      width: context.screenWidth,
      height: context.screenWidth > 420
          ? context.screenHeight * 0.09
          : context.screenHeight * 0.125,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: AppTheme.lightAppColors.maincolor),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: AppTheme.lightAppColors.primary,
            radius: context.screenWidth > 420 ? 18 : 22,
            backgroundImage: AssetImage(driver.driverImg),
          ),
          SizedBox(
            width: context.screenWidth * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DashboardText.driverMainText(driver.name),
              const Spacer(),
              context.screenWidth > 420
                  ? Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: DashboardText.driverSecText(
                            driver.carType,
                            AppTheme.lightAppColors.mainTextcolor,
                            Icons.directions_car_filled,
                            AppTheme.lightAppColors.mainTextcolor,
                          ),
                        ),
                        SizedBox(
                          width: context.screenWidth * 0.01,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              padding: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xffFFE6E6),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  DashboardText.driverSecText(
                                    driver.location,
                                    AppTheme.lightAppColors.subTextcolor,
                                    Icons.location_on,
                                    AppTheme.lightAppColors.subTextcolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 8),
                          width: 100,
                          height: 20,
                          decoration: BoxDecoration(
                            color: const Color(0xffEAEAEA),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: DashboardText.driverSecText(
                            driver.carType,
                            AppTheme.lightAppColors.mainTextcolor,
                            Icons.directions_car_filled,
                            AppTheme.lightAppColors.mainTextcolor,
                          ),
                        ),
                        SizedBox(
                          height: context.screenHeight * 0.01,
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              padding: const EdgeInsets.only(left: 8),
                              decoration: BoxDecoration(
                                color: const Color(0xffFFE6E6),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  DashboardText.driverSecText(
                                    driver.location,
                                    AppTheme.lightAppColors.subTextcolor,
                                    Icons.location_on,
                                    AppTheme.lightAppColors.subTextcolor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    )
            ],
          ),
          const Spacer(),
          DriverIcon(
              color: AppTheme.lightAppColors.subTextcolor,
              icon: Icons.location_on_sharp,
              ontap: () {
                Get.to(
                    GoogleMapWidget(
                      driver: driver.name,
                      img: driver.driverImg,
                    ),
                    transition: Transition.zoom,
                    duration: const Duration(milliseconds: 500));
              }),
          SizedBox(
            width: context.screenWidth * 0.02,
          ),
          DriverIcon(
              color: const Color(0xff4F4F4F),
              icon: Icons.phone_enabled,
              ontap: () {}),
          SizedBox(
            width: context.screenWidth * 0.02,
          ),
          DriverIcon(
              color: AppTheme.lightAppColors.primary,
              icon: Icons.info,
              ontap: () {
                infoDialog(
                    context,
                    Driver(
                        name: driver.name,
                        driverImg: driver.driverImg,
                        location: driver.location,
                        carType: driver.carType,
                        acceptedAt: driver.acceptedAt,
                        acceptedBy: driver.acceptedBy,
                        action: driver.action,
                        driverNumber: driver.driverNumber,
                        orderAt: driver.orderAt,
                        orderBy: driver.orderBy,
                        orderNumber: driver.orderNumber,
                        rideDtart: driver.rideDtart,
                        wentAt: driver.wentAt,
                        wentTo: driver.wentTo));
              }),
        ],
      ),
    );
  }
}
