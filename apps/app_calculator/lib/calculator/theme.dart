import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CalculatorTheme with ChangeNotifier, DiagnosticableTreeMixin {
  final Color background = Colors.grey.shade900;
  final Color backgroundText = Colors.white;
  final Color buttonBackground = Colors.grey.shade800;
  final Color buttonBackgroundText = Colors.white;
  final Color buttonMainOperationsBackground = Colors.orange.shade500;
  final Color buttonMainOperationsBackgroundText = Colors.orange.shade900;

  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('backgroundText', backgroundText));
  }
}

class Counter {}
