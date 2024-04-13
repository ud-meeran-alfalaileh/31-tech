import 'package:flutter/material.dart';
import 'package:tech_31/src/config/theme/theme.dart';

class LocationContainer extends StatefulWidget {
  const LocationContainer({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LocationContainerState createState() => _LocationContainerState();
}

class _LocationContainerState extends State<LocationContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reset();
          _controller.forward();
        }
      });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 50,
        height: 50,
        child: AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            // Calculate the scale based on the animation value and container size
            double scale =
                1.0 + (_animation.value * 0.5); // Adjust this factor as needed

            return Transform.scale(
              scale: scale,
              child: Opacity(
                opacity: 1 - _animation.value,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppTheme.lightAppColors.primary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
