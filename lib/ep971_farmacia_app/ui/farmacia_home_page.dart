import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep971_farmacia_app/controller/farmacia_home_controller.dart';
import 'package:get/get.dart';

import 'framacia_home_bottom_tab_bar.dart';

class FarmaciaHomePage extends StatelessWidget {
  const FarmaciaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FarmaciaScreenController farmaciaScreenController = Get.put(FarmaciaScreenController());
    return  Scaffold(
      body: GetBuilder<FarmaciaScreenController>(
        builder: (controller){
          switch(controller.bottomTabIndex){
            case 0:
              return Container(
                child: Center(
                  child: Text("Page1"),
                ),
              );
            case 1:
              return Container();
            default:
              return Container();
          }
        },
      ),
      bottomNavigationBar: FarmaciaHomeBottomTabBar(),
    );
  }
}
