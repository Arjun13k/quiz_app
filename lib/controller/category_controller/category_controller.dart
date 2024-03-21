import 'package:quiz_app/controller/home_screen_controller.dart';
import 'package:quiz_app/model/category_model/category_model.dart';

class CategoryController {
  static List<CategoryModel> listCategory = [
    CategoryModel(
        image:
            "https://images.pexels.com/photos/274506/pexels-photo-274506.jpeg?auto=compress&cs=tinysrgb&w=600",
        title: "Sports",
        listofQuestion: HomeScreeController.sportsList),
    CategoryModel(
        image:
            "https://images.pexels.com/photos/2280571/pexels-photo-2280571.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        title: "Chemistry",
        listofQuestion: HomeScreeController.chemistryList),
    CategoryModel(
        image:
            "https://images.pexels.com/photos/167682/pexels-photo-167682.jpeg?auto=compress&cs=tinysrgb&w=600",
        title: "Math",
        listofQuestion: HomeScreeController.mathsList),
    CategoryModel(
        image:
            "https://images.pexels.com/photos/208674/pexels-photo-208674.jpeg?auto=compress&cs=tinysrgb&w=600",
        title: "History",
        listofQuestion: HomeScreeController.historyList)
  ];
}
