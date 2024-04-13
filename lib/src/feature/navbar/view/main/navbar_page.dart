import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/view/pages/dashboard_page.dart';
import 'package:tech_31/src/feature/navbar/controller/nav_controller.dart';
import 'package:tech_31/src/feature/navbar/view/partial_widget/custome_navbar.dart';
import 'package:tech_31/src/feature/navbar/view/partial_widget/location_container.dart';
import 'package:tech_31/src/feature/weather/view/weather_view.dart';

class NavBarPage extends StatelessWidget {
  const NavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final controller = Get.put(NavController());
    return Scaffold(
      key: scaffoldKey,
      endDrawer: const Drawer(),
      body: PageView(
        controller: controller.pageController,
        children: const <Widget>[DashboardPage(), WeatherWidget(), Scaffold()],
      ),
      bottomNavigationBar: Obx(
        () => Container(
          color: Colors.grey[200],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CustomNavItem(
                label: Image.asset(
                  'assets/icons/home.png',
                  width: 18,
                ),
                onTap: () {
                  controller.pageController.jumpToPage(0);
                  controller.setSelectedIndex(0);
                },
                isSelected: controller.selectedIndex.value == 0,
              ),
              CustomNavItem(
                label: Image.asset(
                  'assets/icons/User.png',
                  width: 18,
                ),
                onTap: () {
                  controller.pageController.jumpToPage(1);
                  controller.setSelectedIndex(1);
                },
                isSelected: controller.selectedIndex.value == 1,
              ),
              Stack(
                children: [
                  CustomNavItem(
                    label: const LocationContainer(),
                    onTap: () {
                      controller.pageController.jumpToPage(1);
                      controller.setSelectedIndex(1);
                    },
                    isSelected: controller.selectedIndex.value == 1,
                  ),
                  Positioned(
                    top: 10,
                    right: context.screenWidth * 0.055,
                    left: context.screenWidth * 0.055,
                    child: Container(
                      width: 35,
                      height: 40,
                      decoration: BoxDecoration(
                        color: AppTheme.lightAppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.navigation_rounded,
                          color: AppTheme.lightAppColors.maincolor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              CustomNavItem(
                label: Image.asset(
                  'assets/icons/Car.png',
                  width: 18,
                ),
                onTap: () {
                  controller.pageController.jumpToPage(2);
                  controller.setSelectedIndex(2);
                },
                isSelected: controller.selectedIndex.value == 2,
              ),
              CustomNavItem(
                label: Image.asset(
                  'assets/icons/SideMenu.png',
                  width: 18,
                ),
                onTap: () {
                  scaffoldKey.currentState?.openEndDrawer();
                },
                isSelected: controller.selectedIndex.value == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
