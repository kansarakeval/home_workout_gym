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
        appBar: AppBar(
          title: const Text("category"),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Obx(
          () => ListView.builder(
            itemCount: controller.list.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Get.toNamed('detail',arguments: controller.list[index]);
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "${controller.list[index].gifUrl}",
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width: 200,
                              child: Text(
                                "Name : ${controller.list[index].name}",
                                style: TextStyle(fontSize: 16),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              )),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Target : ${controller.list[index].target}",
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Name : ${controller.list[index].equipment}",
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
