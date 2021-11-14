import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/farmacia_home_controller.dart';
import 'package:get/get.dart';

import 'farmacia_home_screen.dart';
import 'framacia_home_bottom_tab_bar.dart';

class FarmaciaHomePage extends StatelessWidget {
  const FarmaciaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FarmaciaScreenController farmaciaScreenController = Get.put(FarmaciaScreenController());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<FarmaciaScreenController>(
          builder: (controller) {
            switch (controller.bottomTabIndex) {
              case 0:
                return FarmaciaHomeScreen();
              case 1:
                return const Center(
                  child: Text("Page 2"),
                );
              case 2:
                return const Center(
                  child: Text("Page 3"),
                );
              case 3:
                return const Center(
                  child: Text("Page 4"),
                );
              case 4:
                return const Center(
                  child: Text("Page 5"),
                );
              default:
                return const Center(
                  child: Text("Page Default"),
                );
            }
          },
        ),
      ),
      bottomNavigationBar: const FarmaciaHomeBottomTabBar(),
    );
  }
}
