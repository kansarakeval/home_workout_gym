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
        body: Padding(
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
                SizedBox(height: 10),
                buildRow("Name: ", m1.name!),
                SizedBox(height: 10),
                buildRow("Target: ", m1.target!),
                SizedBox(height: 10),
                buildRow("BodyPart: ", m1.bodyPart!),
                SizedBox(height: 10),
                buildRow("Equipment: ", m1.equipment!),
                SizedBox(height: 10),
                Text(
                  "Instructions:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...m1.instructions!.map((instruction) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    instruction,
                    style: TextStyle(fontSize: 16),
                  ),
                )).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildRow(String text, String txt) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 240,
          child: Text(
            txt,
            style: TextStyle(fontSize: 18,overflow: TextOverflow.ellipsis),
          ),
        ),
      ],
    );
  }
}
