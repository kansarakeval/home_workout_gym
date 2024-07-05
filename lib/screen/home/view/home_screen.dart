import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout_gym/screen/home/controller/home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Gym"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              category("abs.jpg", "abs"),
              category("chest.jpg", "calves"),
              category("back.jpg", "lats"),
              category("biceps.jpg", "pectorals"),
              category("triceps.jpg", "glutes"),
              category("leg.jpg", "hamstrings"),
              category("solder.jpg", "quads"),
              category("solder.jpg", "adductors"),
              category("solder.jpg", "triceps"),
              category("solder.jpg", "cardiovascular system"),
              category("solder.jpg", "spine"),
              category("solder.jpg", "upper back"),
              category("solder.jpg", "biceps"),
              category("solder.jpg", "delts"),
              category("solder.jpg", "forearms"),
              category("solder.jpg", "traps"),
            ],
          ),
        ),
      ),
    );
  }

  Widget category(String img, text) {
    return InkWell(
      onTap: () {
       controller.filterData(text);
        Get.toNamed('category');
      },
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(
                "assat/img/$img",
              ),
              fit: BoxFit.cover,
              opacity: 0.7),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
