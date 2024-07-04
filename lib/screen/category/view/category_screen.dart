import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_workout_gym/screen/home/controller/home_controller.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => controller.list == null
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: controller.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network("${controller.list[index].gifUrl}");
                  },
                ),
        ),
      ),
    );
  }
}
