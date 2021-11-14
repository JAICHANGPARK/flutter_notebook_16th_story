import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/home_category_tab_controller.dart';
import 'package:get/get.dart';

class FarmaciaHomeScreen extends StatelessWidget {
  const FarmaciaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final FarmaciaHomeCategoriesController homeCategoriesController = Get.put(FarmaciaHomeCategoriesController());
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, Dream!",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("What are you looking for today?")
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const TabBar(
              physics: NeverScrollableScrollPhysics(),
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  text: "PHARMACIES",
                ),
                Tab(
                  text: "PET SUPPLIES",
                ),
                Tab(
                  text: "ORTHOPEDICS",
                ),
              ]),
          Expanded(
              child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: SizedBox(
                      height: 42,
                      child: GetBuilder<FarmaciaHomeCategoriesController>(
                        init: FarmaciaHomeCategoriesController(),
                        builder: (controller){
                          return  ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(0);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                        color: controller.index == 0 ? Colors.black : Colors.grey[200],
                                        borderRadius: BorderRadius.circular(4)),
                                    child:  Center(
                                      child: Text(
                                        "First aid kit",
                                        style: TextStyle(
                                            color: controller.index == 0 ? Colors.white : Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(1);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration:
                                    BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                    child: const Center(
                                      child: Text(
                                        "Cosmetics",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration:
                                  BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                  child: const Center(
                                    child: Text(
                                      "Hygiene",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration:
                                  BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                  child: const Center(
                                    child: Text(
                                      "Others",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  decoration:
                                  BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                                  child: const Center(
                                    child: Text(
                                      "Cosmetics",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },

                      ),
                    ),
                  )
                ],
              ),
              Container(),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
