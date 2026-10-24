import 'dart:math';

import 'package:flutter/material.dart';

import 'app_header.dart';
import 'count_stepper.dart';
import 'dice_result.dart';
import 'gradient_background.dart';
import 'roll_button.dart';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> {
  final Random _random = Random();

  int _count = 1; // сколько кубиков бросаем
  int _result = 0; // что выпало в сумме

  void _minusCount() {
    if (_count > 1) {
      setState(() {
        _count = _count - 1;
      });
    }
  }

  void _plusCount() {
    if (_count < 100) {
      setState(() {
        _count = _count + 1;
      });
    }
  }

  void _roll() {
    int total = 0;

    // nextInt(6) даёт 0..5, поэтому прибавляем единицу.
    for (int i = 0; i < _count; i++) {
      total = total + _random.nextInt(6) + 1;
    }

    setState(() {
      _result = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              children: [
                const AppHeader(),
                Expanded(
                  child: Center(child: DiceResult(result: _result)),
                ),
                CountStepper(
                  count: _count,
                  onMinus: _minusCount,
                  onPlus: _plusCount,
                ),
                const SizedBox(height: 14),
                RollButton(onPressed: _roll),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
