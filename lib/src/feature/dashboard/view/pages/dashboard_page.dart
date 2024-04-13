import 'package:flutter/material.dart';
import 'package:tech_31/src/config/theme/theme.dart';
import 'package:tech_31/src/feature/dashboard/view/widget/main_widgets/dashboard_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppTheme.lightAppColors.background,
      body: const DashboardWidget(),
    ));
  }
}
