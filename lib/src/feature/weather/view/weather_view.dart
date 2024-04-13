import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/weather/controller/weather_controller.dart';
import 'package:tech_31/src/feature/weather/model/weather_model.dart';

class WeatherWidget extends StatelessWidget {
  const WeatherWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<WeatherController>();

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.lightAppColors.background,
        appBar: AppBar(
          leading: Icon(
            Icons.map,
            color: AppTheme.lightAppColors.subTextcolor,
          ),
          title: Text(
            "Jordan Weather",
            style: TextStyle(color: AppTheme.lightAppColors.primary),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(20),
          child: StreamBuilder<Weather>(
            stream: controller.weatherStream,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SpinKitFadingCircle(
                        color: AppTheme.lightAppColors.mainTextcolor,
                        size: 50.0,
                      ),
                    ],
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final weatherData = snapshot.data!;

                return Container(
                  padding: const EdgeInsets.all(10),
                  width: context.screenWidth,
                  height: context.screenHeight * 0.2,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: AppTheme.lightAppColors.maincolor,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Location: ${weatherData.location.name}, ${weatherData.location.region}, ${weatherData.location.country}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Temperature: ${weatherData.current.tempC}°C',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Condition: ${weatherData.current.condition['text']}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      Text(
                        'Local Time: ${weatherData.location.localtime}',
                        style: const TextStyle(fontSize: 18),
                      ),
                      // Add more data as needed
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
