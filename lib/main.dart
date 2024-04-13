import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/navbar/view/main/navbar_page.dart';
import 'package:tech_31/src/feature/weather/controller/weather_controller.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: const NavBarPage(),
      initialBinding: BindingsBuilder(() {
        Get.lazyPut<WeatherController>(() => WeatherController());
      }),
    );
  }
}
