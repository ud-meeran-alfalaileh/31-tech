// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:tech_31/src/config/theme/theme.dart';

class DashboardText {
  static containerText(String title) {
    return Text(
      title,
      style: TextStyle(color: AppTheme.lightAppColors.primary, fontSize: 15),
    );
  }

  static headerText(String title) {
    return Text(
      title,
      style: TextStyle(
          color: AppTheme.lightAppColors.mainTextcolor,
          fontSize: 18,
          fontWeight: FontWeight.w600),
    );
  }

  static driverMainText(String title) {
    return Text(
      title,
      style: TextStyle(
          color: AppTheme.lightAppColors.primary,
          fontSize: 10,
          fontWeight: FontWeight.w600),
    );
  }

  static appBatText(String title) {
    return Text(
      title,
      style: TextStyle(
          color: AppTheme.lightAppColors.primary,
          fontSize: 18,
          fontWeight: FontWeight.w600),
    );
  }

  static driverSecText(String title, Color color, icon, iconcolor) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconcolor,
          size: 12,
        ),
        Text(
          "  $title",
          style: TextStyle(
            color: color,
            fontSize: 7,
          ),
        ),
      ],
    );
  }

  static statisticMainText(String title) {
    return Text(
      title,
      style: TextStyle(
          color: AppTheme.lightAppColors.primary,
          fontSize: 12,
          fontWeight: FontWeight.w700),
    );
  }

  static statisticthirdText(String title, String? title2) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Color(0xff4EAA63),
              fontSize: 22,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title2!,
          textAlign: TextAlign.end,
          style: const TextStyle(
              color: Color(0xff4EAA63),
              fontSize: 13,
              fontWeight: FontWeight.w800),
        ),
      ],
    );
  }

  static statisticSecText(String title, icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 10,
          color: AppTheme.lightAppColors.subTextcolor,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: AppTheme.lightAppColors.mainTextcolor,
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
