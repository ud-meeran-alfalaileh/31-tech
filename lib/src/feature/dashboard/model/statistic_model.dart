import 'package:flutter/material.dart';

class Statistic {
  String title;
  String subTitle;
  IconData icons;
  String statistic;
  String? secTitle;
  Statistic(
      {required this.title,
      required this.icons,
      this.secTitle,
      required this.statistic,
      required this.subTitle});
}
