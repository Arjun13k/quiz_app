import 'package:flutter/material.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';

class PercentageScreen extends StatefulWidget {
  const PercentageScreen({super.key, required this.rightAnswer});
  final int rightAnswer;
  @override
  State<PercentageScreen> createState() => _PercentageScreenState();
}

class _PercentageScreenState extends State<PercentageScreen> {
  @override
  Widget build(BuildContext context) {
    final percentage =
        (widget.rightAnswer / HomeScreeController.questionsList.length) * 100;
    return Scaffold(
      body: Center(
        child: Text('Your score is ${percentage.round()}'),
      ),
    );
  }
}
