import 'package:flutter/material.dart';

import 'app_colors.dart';

class CountStepper extends StatelessWidget {
  const CountStepper({
    super.key,
    required this.count,
    required this.onMinus,
    required this.onPlus,
  });

  final int count;
  final VoidCallback onMinus;
  final VoidCallback onPlus;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onMinus,
            icon: const Icon(Icons.remove),
            color: AppColors.textPrimary,
            iconSize: 26,
          ),
          Text(
            '$count',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: AppColors.textPrimary,
            ),
          ),
          IconButton(
            onPressed: onPlus,
            icon: const Icon(Icons.add),
            color: AppColors.textPrimary,
            iconSize: 26,
          ),
        ],
      ),
    );
  }
}
