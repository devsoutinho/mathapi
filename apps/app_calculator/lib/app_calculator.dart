library app_calculator;

import 'package:app_calculator/calculator/calculator_widget.dart';
import 'package:app_calculator/calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CalculatorTheme()),
        ],
        child: const Calculator(),
      ),
    );
  }
}
