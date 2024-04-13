import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tech_31/src/config/sizes/sizes.dart';
import 'package:tech_31/src/config/theme/theme.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Color _color = Colors.white;
  late Timer _timer;
  bool _isWhite = true;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _color = _isWhite
            ? const Color.fromARGB(255, 119, 177, 215)
            : AppTheme.lightAppColors.primary;
        _isWhite = !_isWhite;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppTheme.lightAppColors.maincolor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    icon: Image.asset(
                      "assets/icons/Bell.png",
                      width: 20,
                    ),
                    onPressed: () {},
                  ),
                  Positioned(
                    top: 3,
                    left: 18,
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: BoxDecoration(
                          color: AppTheme.lightAppColors.subTextcolor,
                          shape: BoxShape.circle),
                      child: Center(
                          child: Text(
                        "3",
                        style: TextStyle(
                            fontSize: 10,
                            color: AppTheme.lightAppColors.background),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: context.screenWidth * 0.01,
              ),
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                width: 100,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: _color,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.01,
                      ),
                      Text(
                        "On Hold",
                        style: TextStyle(
                          color: AppTheme.lightAppColors
                              .maincolor, // Adjust the text color as needed
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        width: 20,
                        height: 19,
                        decoration: BoxDecoration(
                          color: AppTheme.lightAppColors.subTextcolor,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppTheme.lightAppColors
                                  .maincolor, // Adjust the text color as needed
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/icons/Flag.png",
                width: 20,
              ),
              SizedBox(
                width: context.screenWidth * 0.03,
              ),
              Image.asset(
                "assets/icons/Logo.png",
                width: 100,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
