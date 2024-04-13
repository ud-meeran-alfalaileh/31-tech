import 'package:flutter/material.dart';
import 'package:tech_31/src/config/theme/app_extension.dart';

class AppTheme {
  static final light = ThemeData.light().copyWith(
    extensions: [
      lightAppColors,
    ],
  );

  static final lightAppColors = AppColorsExtension(
    primary: const Color(0xff0077C8), //
    background: const Color(0xffF5F5F5), //
    maincolor: const Color(0xffFFFFFF), //
    bordercolor: const Color(0xffD9D9D9),
    subTextcolor: const Color(0xffDB5B5B),
    mainTextcolor: const Color(0xff606060),
    containercolor: const Color(0xffF4F5F7),
  );
}
