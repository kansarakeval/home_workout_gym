import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout_gym/screen/home/controller/home_controller.dart';
import 'package:home_workout_gym/screen/home/model/home_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  HomeModel m1 = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Text("${m1.id}"),
      ),
    );
  }
}
