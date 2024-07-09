import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Gym",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assat/img/bg2.jpg",
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 3, sigmaX: 3),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  category("abs.jpg", "abs"),
                  category("calves.jpg", "calves"),
                  category("lats.jpg", "lats"),
                  category("pectorals.jpg", "pectorals"),
                  category("glutes.jpg", "glutes"),
                  category("hamstrings.jpg", "hamstrings"),
                  category("quads.jpg", "quads"),
                  category("adductors.jpg", "adductors"),
                  category("triceps.jpg", "triceps"),
                  category(
                      "cardiovascular system.jpg", "cardiovascular system"),
                  category("spine.jpg", "spine"),
                  category("upper back.jpg", "upper back"),
                  category("biceps.png", "biceps"),
                  category("delts.jpg", "delts"),
                  category("forearms.jpg", "forearms"),
                  category("traps.jpg", "traps"),
                ],
              ),
            ),
          ),
        ],
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
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(
              "assat/img/$img",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
