import 'package:blurrycontainer/blurrycontainer.dart';
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
    return Scaffold(
      appBar: AppBar(
        title: const Text("category",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(opacity: 0),
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assat/img/bg1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Obx(
            () => ListView.builder(
              itemCount: controller.list.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.toNamed('detail',arguments: controller.list[index]);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlurryContainer(
                      padding: const EdgeInsets.all(8),
                      blur: 5,
                      elevation: 0,
                      color: Colors.white12,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Name : ${controller.list[index].name}",
                                    style: const TextStyle(fontSize: 16,color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Target : ${controller.list[index].target}",
                                style: const TextStyle(fontSize: 16,color: Colors.white),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Name : ${controller.list[index].equipment}",
                                style: const TextStyle(fontSize: 16,color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
