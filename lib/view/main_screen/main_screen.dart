import 'package:flutter/material.dart';
import 'package:quiz_app/core/constant/color_constant/color_constant.dart';
import 'package:quiz_app/view/dummyDb.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black.withOpacity(.2),
        body: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "Hi,Aishu",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
