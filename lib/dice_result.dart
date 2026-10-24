import 'package:flutter/material.dart';

import 'app_colors.dart';

class DiceResult extends StatelessWidget {
  const DiceResult({super.key, required this.result});

  final int result;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      height: 220,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(36),
        border: Border.all(color: AppColors.accent, width: 3),
      ),
      child: Text(
        '$result',
        style: const TextStyle(
          fontSize: 76,
          fontWeight: FontWeight.w700,
          color: AppColors.accentLight,
        ),
      ),
    );
  }
}
