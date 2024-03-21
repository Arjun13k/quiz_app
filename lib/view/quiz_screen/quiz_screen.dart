import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/color_constant/color_constant.dart';
import 'package:quiz_app/model/category_model/category_model.dart';
import 'package:quiz_app/view/percentage_screen/percentage_screen.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({super.key, required this.category});
  final CategoryModel category;

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndexQuestion = 0;
  int? coorectAnswerIndex;
  int rightAnswer = 0;
  int wrongAnswer = 0;
  @override
  Widget build(BuildContext context) {
    var questionsList;
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.black,s
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              if (currentIndexQuestion <
                  widget.category.listofQuestion.length - 1) {
                currentIndexQuestion++;
                coorectAnswerIndex = null;

                setState(() {});
              } else {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PercentageScreen(
                        rightAnswer: rightAnswer,
                        WrongAnswer: wrongAnswer,
                        questionScreen: widget.category,
                        totalCount: widget.category.listofQuestion.length,
                        // questionScreen:,
                      ),
                    ));
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white.withOpacity(.2)),
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: InkWell(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorConstant.primaryGrey.withOpacity(.4)),
                child: Text(
                  widget
                      .category.listofQuestion[currentIndexQuestion].questions,
                  style: TextStyle(color: ColorConstant.primaryWhite),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (coorectAnswerIndex == null) {
                            coorectAnswerIndex = index;

                            if (coorectAnswerIndex ==
                                widget
                                    .category
                                    .listofQuestion[currentIndexQuestion]
                                    .correctAnswerIndex) {
                              rightAnswer++;
                            } else {
                              wrongAnswer++;
                            }
                            print(rightAnswer);
                            // print(index);
                            // print(coorectAnswerIndex);
                            setState(() {});
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: buildColor(index)),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget
                                    .category
                                    .listofQuestion[currentIndexQuestion]
                                    .optionList[index],
                                style: TextStyle(
                                    color: ColorConstant.primaryWhite),
                              ),
                              Icon(
                                buildIcon(index),
                                color: buildColor(index),
                              )
                            ],
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          width: double.infinity,
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(
                        height: 10,
                      ),
                  itemCount: 4),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  if (coorectAnswerIndex != null) if (currentIndexQuestion <
                      widget.category.listofQuestion.length - 1) {
                    currentIndexQuestion++;
                    coorectAnswerIndex = null;

                    setState(() {});
                  } else {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PercentageScreen(
                            rightAnswer: rightAnswer,
                            WrongAnswer: wrongAnswer,
                            questionScreen: widget.category,
                            totalCount: widget.category.listofQuestion.length,
                            // questionScreen:,
                          ),
                        ));
                  }
                },
                child: Container(
                    child: Center(
                        child: Text(
                      "Next",
                      style: TextStyle(
                          color: ColorConstant.primaryWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstant.primaryBlue)),
              )
            ],
          ),
        ),
      ),
    ));
  }

  Color buildColor(int index) {
    if (index ==
            widget.category.listofQuestion[currentIndexQuestion]
                .correctAnswerIndex &&
        coorectAnswerIndex != null) {
      return ColorConstant.primaryGreen;
    } else if (index == coorectAnswerIndex) {
      if (coorectAnswerIndex ==
          widget.category.listofQuestion[currentIndexQuestion]
              .correctAnswerIndex) {
        return ColorConstant.primaryGreen;
      } else {
        return ColorConstant.primaryRed;
      }
    } else {
      return ColorConstant.primaryGrey;
    }
  }

  IconData? buildIcon(int index) {
    if (index ==
            widget.category.listofQuestion[currentIndexQuestion]
                .correctAnswerIndex &&
        coorectAnswerIndex != null) {
      return Icons.done;
    } else if (index == coorectAnswerIndex) {
      if (coorectAnswerIndex !=
          widget.category.listofQuestion[currentIndexQuestion]
              .correctAnswerIndex) {
        return Icons.close;
      }
    } else {
      return null;
    }
  }
}
