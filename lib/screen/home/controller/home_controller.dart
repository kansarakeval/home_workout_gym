import 'package:get/get.dart';
import 'package:home_workout_gym/screen/home/model/home_model.dart';
import 'package:home_workout_gym/util/api_helper.dart';

class HomeController extends GetxController{
  RxList<HomeModel> homeList = <HomeModel>[].obs;
  RxList<HomeModel> list = <HomeModel>[].obs;

  Future<void> getData() async {
    List<HomeModel>? l1 = await ApiHelper.helper.getGym();
    homeList.value = l1!;
  }

}