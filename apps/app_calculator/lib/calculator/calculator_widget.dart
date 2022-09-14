import 'package:app_calculator/calculator/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:skynexui_responsive_stylesheet/skynexui_responsive_stylesheet.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<CalculatorTheme>(context);
    return Container(
      color: theme.background,
      child: const GridItem(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        as: Column,
        children: [
          Text("[Display]"),
          Text("12312"),
          Keyboard(),
        ],
      ),
    );
  }
}

class Keyboard extends StatelessWidget {
  const Keyboard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GridItem(children: [
      Text("[Keyboard]"),
      GridItem(
        as: Row,
        children: [
          KeyboardButton(value: "1"),
          KeyboardButton(value: "2"),
          KeyboardButton(value: "3"),
          KeyboardButton(value: "/"),
        ],
      ),
      GridItem(
        as: Row,
        children: [
          KeyboardButton(value: "4"),
          KeyboardButton(value: "5"),
          KeyboardButton(value: "6"),
        ],
      ),
      GridItem(
        as: Row,
        children: [
          KeyboardButton(value: "7"),
          KeyboardButton(value: "8"),
          KeyboardButton(value: "9"),
        ],
      ),
    ]);
  }
}

class KeyboardButton extends StatelessWidget {
  final String value;

  const KeyboardButton({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Provider.of<CalculatorTheme>(context);

    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: theme.buttonBackground,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyle(
            color: theme.buttonBackgroundText,
          ),
        ),
      ),
    );
  }
}
