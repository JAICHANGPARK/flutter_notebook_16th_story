import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/farmacia_home_controller.dart';
import 'package:get/get.dart';

class FarmaciaHomeBottomTabBar extends StatelessWidget {
  const FarmaciaHomeBottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 5,
      child: SizedBox(
        height: 72,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GetBuilder<FarmaciaScreenController>(
            init: FarmaciaScreenController(),
            builder: (controller) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  controller.bottomTabIndex == 0
                      ? Flexible(
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
                        ))
                      : IconButton(
                          onPressed: () {
                            controller.setBottomTabIndex(0);
                          },
                          icon: const Icon(
                            Icons.apps,
                          )),
                  controller.bottomTabIndex == 1
                      ? Flexible(
                          child: GestureDetector(
                          onTap: () {
                            controller.setBottomTabIndex(1);
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
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                      : IconButton(
                          onPressed: () {
                            controller.setBottomTabIndex(1);
                          },
                          icon: const Icon(
                            Icons.shopping_cart_outlined,
                          )),
                  controller.bottomTabIndex == 2
                      ? Flexible(
                          child: GestureDetector(
                          onTap: () {
                            controller.setBottomTabIndex(2);
                          },
                          child: Container(
                            // width: 100,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.search,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Search",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                      : IconButton(
                          onPressed: () {
                            controller.setBottomTabIndex(2);
                          },
                          icon: const Icon(
                            Icons.search,
                          )),
                  controller.bottomTabIndex == 3
                      ? Flexible(
                          child: GestureDetector(
                          onTap: () {
                            controller.setBottomTabIndex(3);
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
                                  Icons.bookmark_border,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Cart",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                      : IconButton(
                          onPressed: () {
                            controller.setBottomTabIndex(3);
                          },
                          icon: const Icon(
                            Icons.bookmark_border,
                          )),
                  controller.bottomTabIndex == 4
                      ? Flexible(
                          child: GestureDetector(
                          onTap: () {
                            controller.setBottomTabIndex(4);
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.account_circle_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "Account",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                      : IconButton(
                          onPressed: () {
                            controller.setBottomTabIndex(4);
                          },
                          icon: const Icon(
                            Icons.account_circle_outlined,
                          )),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
