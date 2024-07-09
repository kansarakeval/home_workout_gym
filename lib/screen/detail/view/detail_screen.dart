import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset("assat/img/bg2.jpg",fit: BoxFit.cover,),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaY: 3,sigmaX: 3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          "${m1.gifUrl}",
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      buildRow("Name : ", m1.name!),
                      const SizedBox(height: 10),
                      buildRow("Target : ", m1.target!),
                      const SizedBox(height: 10),
                      buildRow("BodyPart : ", m1.bodyPart!),
                      const SizedBox(height: 10),
                      buildRow("Equipment : ", m1.equipment!),
                      const SizedBox(height: 10),
                      const Text(
                        "Instructions :",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      ...m1.instructions!.map((instruction) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          instruction,
                          style: const TextStyle(fontSize: 16,color: Colors.white),
                        ),
                      )).toList(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRow(String text, String txt) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),
        ),
        SizedBox(
          width: 240,
          child: Text(
            txt,
            style: const TextStyle(fontSize: 18,overflow: TextOverflow.ellipsis,color: Colors.white),
          ),
        ),
      ],
    );
  }
}
