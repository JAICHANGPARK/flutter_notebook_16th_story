import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/farmacia_home_controller.dart';
import 'package:get/get.dart';

class FarmaciaHomePage extends StatelessWidget {
  const FarmaciaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FarmaciaScreenController farmaciaScreenController = Get.put(FarmaciaScreenController());
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        elevation: 5,
        child: SizedBox(
          height: 72,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<FarmaciaScreenController>(
              builder: ( controller) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    controller.bottomTabIndex == 0 ? Flexible(
                        child: GestureDetector(
                          onTap: () {
                            controller.setBottomTabIndex(0);
                          },
                          child: Container(
                            width: 100,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.apps,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )) :
                    IconButton(
                        onPressed: () {
                          controller.setBottomTabIndex(0);
                        },
                        icon: const Icon(
                          Icons.apps,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart_outlined,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark_border,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.account_circle_outlined,
                        )),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
