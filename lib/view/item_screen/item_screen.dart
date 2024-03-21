import 'package:flutter/material.dart';
import 'package:quiz_app/model/category_model/category_model.dart';

class MyList extends StatelessWidget {
  const MyList({super.key, required this.QuestionDatas});
  final CategoryModel QuestionDatas;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              QuestionDatas.image,
              scale: 1.5,
              fit: BoxFit.cover,
            ),
            Text(QuestionDatas.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            Text(QuestionDatas.listofQuestion.length.toString(),
                style: TextStyle(
                    color: Colors.white.withOpacity(.4), fontSize: 15))
          ],
        ),
      ),
    );
  }
}
