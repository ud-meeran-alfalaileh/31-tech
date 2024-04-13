import 'package:flutter/material.dart';
import 'package:tech_31/src/config/const/list.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/partial_widget/statistic/statistics_container.dart';

class StatisticList extends StatelessWidget {
  const StatisticList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: context.screenHeight * 0.5,
      child: GridView.builder(
          //physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 120, crossAxisCount: 2, crossAxisSpacing: 50),
          itemCount: AppConst.statistic.length,
          itemBuilder: (context, index) {
            return StatlisiticContainer(
              statistic: AppConst.statistic[index],
            );
          }),
    );
  }
}
