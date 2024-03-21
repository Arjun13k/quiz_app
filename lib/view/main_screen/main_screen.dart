import 'package:flutter/material.dart';
import 'package:quiz_app/controller/category_controller/category_controller.dart';
import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/view/item_screen/item_screen.dart';
import 'package:quiz_app/view/quiz_screen/quiz_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black.withOpacity(.2),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi,Arjun",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          "Let makes this day more productive",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/159136735?v=4"),
                      radius: 30,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("Choose a category",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Lets play",
                    style: TextStyle(color: Colors.white, fontSize: 15)),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10),
                      itemCount: CategoryController.listCategory.length,
                      itemBuilder: (context, index) => InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QuizScreen(
                                    category:
                                        CategoryController.listCategory[index],
                                  ),
                                )),
                            child: MyList(
                              QuestionDatas:
                                  CategoryController.listCategory[index],
                            ),
                          )),
                )
              ],
            ),
          )),
    );
  }
}
