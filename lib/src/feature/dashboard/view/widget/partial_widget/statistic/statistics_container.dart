import 'package:flutter/material.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/model/statistic_model.dart';

import '../../text/text_widget.dart';

// ignore: must_be_immutable
class StatlisiticContainer extends StatelessWidget {
  StatlisiticContainer({super.key, required this.statistic});
  Statistic statistic;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(10),
      width: context.screenWidth * 0.38,
      height: context.screenHeight * 0.13,
      decoration: BoxDecoration(
          color: AppTheme.lightAppColors.maincolor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        DashboardText.statisticMainText(statistic.title),
        context.screenWidth > 570
            ? DashboardText.statisticSecText(
                statistic.subTitle, statistic.icons)
            : context.screenWidth > 480
                ? DashboardText.statisticSecText(
                    nameShortenText(statistic.subTitle), statistic.icons)
                : DashboardText.statisticSecText(
                    shortenText(statistic.subTitle), statistic.icons),
        const Spacer(),
        DashboardText.statisticthirdText(
            statistic.statistic, statistic.secTitle),
      ]),
    );
  }

  String nameShortenText(String text, {int maxLength = 30}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  String shortenText(String text, {int maxLength = 20}) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }
}
