import 'dart:convert';

import 'package:home_workout_gym/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  static ApiHelper helper = ApiHelper._();

  ApiHelper._();

  Future<List<HomeModel>?> getGym() async {
    String apiList = "https://gym-workout1.p.rapidapi.com/exercise";
    var response = await http.get(Uri.parse(apiList), headers: {
      'x-rapidapi-host': 'gym-workout1.p.rapidapi.com',
      'x-rapidapi-key': '588b0dcfc1msh755d7bf01729233p1b3108jsn09e365ae514d'
    });
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<HomeModel> homeList = json.map((e) => HomeModel.mapToModel(e)).toList();
      return homeList;

    }
    return null;
  }
}
