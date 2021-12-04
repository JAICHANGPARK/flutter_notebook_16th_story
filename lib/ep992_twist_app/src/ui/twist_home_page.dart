import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_menu_contoller.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class TwistHomePage extends StatelessWidget {
  const TwistHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TwistMenuController>(
      init: TwistMenuController(),
      builder: (controller){
        return Scaffold(
          body: IndexedStack(
            index: controller.bottomTab,

          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.bottomTab,
            onTap: (idx){
              controller.setBottomTab(idx);
            },
            type: BottomNavigationBarType.fixed,
            items: const [BottomNavigationBarItem(icon: Icon(Ionicons.cube_outline), label: "Inbox"),
              BottomNavigationBarItem(icon: Icon(Icons.tag), label: "Channels"),
              BottomNavigationBarItem(icon: Icon(Ionicons.chatbubble_outline), label: "Messages"),
              BottomNavigationBarItem(icon: CircleAvatar(), label: "Inbox"),],
          ),
        );
      },

    );
  }
}


