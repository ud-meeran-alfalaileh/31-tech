import 'package:flutter/material.dart';
import 'package:tech_31/src/config/theme/theme.dart';

// ignore: must_be_immutable
class DriverIcon extends StatelessWidget {
  DriverIcon(
      {super.key,
      required this.color,
      required this.icon,
      required this.ontap});
  IconData icon;
  Color color;
  VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 25,
        height: 25,
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
        child: Center(
            child: Icon(
          icon,
          size: 20,
          color: AppTheme.lightAppColors.maincolor,
        )),
      ),
    );
  }
}
