import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/home_category_tab_controller.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

Color kFarmaciaColor = const Color(0xffE0FF20);

/// 224 255 32

class FarmaciaHomeScreen extends StatelessWidget {
  FarmaciaHomeScreen({Key? key}) : super(key: key);
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    print("Build FarmaciaHomeScreen()");
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
                      height: 38,
                      child: GetBuilder<FarmaciaHomeCategoriesController>(
                        init: FarmaciaHomeCategoriesController(),
                        builder: (controller) {
                          return ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(0);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                        color: controller.index == 0 ? Colors.black : Colors.grey[200],
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text(
                                        "First aid kit",
                                        style: TextStyle(color: controller.index == 0 ? Colors.white : Colors.grey),
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
                                    decoration: BoxDecoration(
                                      color: controller.index == 1 ? Colors.black : Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Cosmetics",
                                        style: TextStyle(
                                          color: controller.index == 1 ? Colors.white : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(2);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: controller.index == 2 ? Colors.black : Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Hygiene",
                                        style: TextStyle(
                                          color: controller.index == 2 ? Colors.white : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(3);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                      color: controller.index == 3 ? Colors.black : Colors.grey[200],
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Others",
                                        style: TextStyle(
                                          color: controller.index == 3 ? Colors.white : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 4),
                                child: GestureDetector(
                                  onTap: () {
                                    controller.setIndex(4);
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                    decoration: BoxDecoration(
                                        color: controller.index == 4 ? Colors.black : Colors.grey[200],
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Text(
                                        "Cosmetics",
                                        style: TextStyle(
                                          color: controller.index == 4 ? Colors.white : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GetBuilder<FarmaciaHomeCategoriesController>(
                      builder: (controller) {
                        switch (controller.index) {
                          case 0:
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 340,
                                  child: PageView(
                                    controller: pageController,
                                    children: [
                                      Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                                      child: const Text(
                                                        "COVID-19 WARNING",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: kFarmaciaColor,
                                                          borderRadius: BorderRadius.circular(4)),
                                                    ),
                                                    const Padding(
                                                      padding: EdgeInsets.symmetric(vertical: 16),
                                                      child: const Text(
                                                        "Keep safe",
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    const Text("Check out the list of security"),
                                                    const Text("measures to follow"),
                                                  ],
                                                ),
                                                const Spacer(),
                                                CachedNetworkImage(
                                                    imageUrl:
                                                        "https://media.karousell.com/media/photos/products/2021/8/29/original_korean_face_mask_adul_1630238266_66f71ff6_progressive.jpg")
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                            padding: const EdgeInsets.all(16),
                                            child: Row(
                                              children: [
                                                Column(
                                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: const [
                                                    Text(
                                                      "Special price",
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "\$12.2",
                                                      style: TextStyle(color: Colors.grey, fontSize: 12),
                                                    ),
                                                    Text(
                                                      "\$11,7",
                                                      style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text("KANEBO"),
                                                    Text("Moisture Flow Rich Lotion")
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 160,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius: BorderRadius.circular(6)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: SmoothPageIndicator(
                                    controller: pageController,
                                    count: 4,
                                    effect: ExpandingDotsEffect(
                                        dotColor: Colors.grey[400]!, activeDotColor: Colors.grey[400]!, dotHeight: 4),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    "SALES AND DISCOUNTS",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Row(
                                  children: [
                                    Expanded(
                                        child: Container(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Icon(
                                            Icons.price_check,
                                            size: 32,
                                          ),
                                          Spacer(),
                                          Text(
                                            "50% off",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text("essential oils")
                                        ],
                                      ),
                                      decoration:
                                          BoxDecoration(color: kFarmaciaColor, borderRadius: BorderRadius.circular(4)),
                                    )),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.price_check,
                                                size: 32,
                                              ),
                                              Spacer(),
                                              Text(
                                                "50% off",
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("essential oils")
                                            ],
                                          ),
                                          decoration:
                                          BoxDecoration(color: kFarmaciaColor, borderRadius: BorderRadius.circular(4)),
                                        )),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(16),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Icon(
                                                Icons.price_check,
                                                size: 32,
                                              ),
                                              Spacer(),
                                              Text(
                                                "50% off",
                                                style: TextStyle(
                                                  fontSize: 24,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("essential oils")
                                            ],
                                          ),
                                          decoration:
                                          BoxDecoration(color: kFarmaciaColor, borderRadius: BorderRadius.circular(4)),
                                        )),
                                  ],
                                ))
                              ],
                            );
                          case 1:
                            return Container(
                              child: const Center(
                                child: Text("2"),
                              ),
                            );
                          case 2:
                            return Container(
                              child: const Center(
                                child: Text("3"),
                              ),
                            );

                          default:
                            return Container(
                              child: const Center(
                                child: Text("61"),
                              ),
                            );
                        }
                      },
                    ),
                  )),
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
