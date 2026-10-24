import 'package:flutter/material.dart';

import 'app_colors.dart';

class GradientBackground extends StatelessWidget {
  const GradientBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.backgroundTop,
            AppColors.backgroundMiddle,
            AppColors.backgroundBottom,
          ],
        ),
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Текстура кубиков поверх градиента
          Opacity(
            opacity: 0.10,
            child: Image.asset(
              'assets/images/dice_pattern.png',
              fit: BoxFit.cover,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
