import 'package:quiz_app/model/quiz_screen_models/questions_model.dart';

class CategoryModel {
  String image;
  String title;
  List<QuestionsModel> listofQuestion;
  CategoryModel(
      {required this.image, required this.title, required this.listofQuestion});
}
