import 'package:flutter/material.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class PercentageScreen extends StatefulWidget {
  const PercentageScreen({
    super.key,
    required this.rightAnswer,
    required this.WrongAnswer,
    required this.questionScreen,
    required this.totalCount,
  });
  final int rightAnswer;
  final int WrongAnswer;
  final CategoryModel questionScreen;
  final int totalCount;
  // final questions;
  @override
  State<PercentageScreen> createState() => _PercentageScreenState();
}

class _PercentageScreenState extends State<PercentageScreen> {
  @override
  Widget build(BuildContext context) {
    final percentage = (widget.rightAnswer / widget.totalCount) * 100;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congrats!",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              ' ${percentage.roundToDouble()}% score ',
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Correct Answer:  ${widget.rightAnswer} ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "wrong Answer:  ${widget.WrongAnswer} ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Text(
              "Skipped Question: ${widget.totalCount - widget.rightAnswer - widget.WrongAnswer}",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        QuizScreen(category: widget.questionScreen),
                  )),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.orange),
                child: Text("Restart",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Back To Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15)))
              ],
            )
          ],
        ),
      ),
    );
  }
}
