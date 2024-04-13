import 'package:flutter/material.dart';

class DraweNavBar extends StatelessWidget {
  const DraweNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      drawer: const Drawer(),
    );
  }
}
