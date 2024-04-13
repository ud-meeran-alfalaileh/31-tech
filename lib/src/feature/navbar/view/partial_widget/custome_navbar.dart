import 'package:flutter/material.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';

class CustomNavItem extends StatelessWidget {
  final Widget label;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomNavItem(
      {super.key,
      required this.label,
      required this.onTap,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: context.screenWidth * 0.2,
        height: context.screenHeight * 0.08,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xffDDECF6) : Colors.transparent,
        ),
        child: Center(child: label),
      ),
    );
  }
}
