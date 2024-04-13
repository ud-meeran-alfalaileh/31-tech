// import 'package:flutter/material.dart';
// import 'package:tech_31/src/config/sizes/sizes.dart';

// class AnimatedWidthContainer extends StatefulWidget {
//   const AnimatedWidthContainer({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AnimatedWidthContainerState createState() => _AnimatedWidthContainerState();
// }

// class _AnimatedWidthContainerState extends State<AnimatedWidthContainer> {
//   double _containerWidth = 0.0;
//   bool _increaseWidth = true;

//   @override
//   void initState() {
//     super.initState();
//     _containerWidth = context.screenWidth * 0.25; // Set initial width here
//     _startAnimation();
//   }

//   void _startAnimation() {
//     Future.delayed(Duration(seconds: 1), () {
//       setState(() {
//         _containerWidth = _increaseWidth ? 0 : context.screenWidth * 0.25;
//         _increaseWidth = !_increaseWidth;
//         _startAnimation();
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       width: _containerWidth,
//       height: context.screenHeight * .035,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.blue.shade300,
//       ),
//       duration: const Duration(seconds: 1),
//       curve: Curves.linear,
//     );
//   }
// }
