import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_inbox_controller.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_menu_contoller.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/ui/twist_inbox_screen.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

import '../model/twist_inbox.dart';
import 'twist_channel_screen.dart';
import 'twist_message_screen.dart';

class TwistHomePage extends StatelessWidget {
  const TwistHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TwistMenuController>(
      init: TwistMenuController(),
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.bottomTab,
            children: const [
              TwistInboxScreen(),
              TwistChannelScreen(),
              TwistMessageScreen(),
              Center(
                child: Text("More"),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.cyan,
            child: controller.bottomTab == 2 ? Icon(Ionicons.chatbubble_outline):const Icon(Ionicons.create_outline),
            onPressed: () {
              final TwistInboxController twistInboxController = Get.find<TwistInboxController>();
              twistInboxController.addItem(
                TwistInbox(
                  title: "New Inbox Item",
                  subtitle:
                  "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
                  tag: "Marketing",
                  img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
                  dateTime: DateTime.now().subtract(const Duration(minutes: 30)),
                ),
              );
              // twistInboxController.update();

            },
          ),
          // floatingActionButton: GetBuilder<TwistInboxController>(
          //   builder: (controller) {
          //     return FloatingActionButton(
          //       backgroundColor: Colors.cyan,
          //       child: const Icon(Ionicons.create_outline),
          //       onPressed: () {
          //         controller.addItem(
          //           TwistInbox(
          //             title: "New Inbox Item",
          //             subtitle:
          //                 "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
          //             tag: "Marketing",
          //             img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
          //             dateTime: DateTime.now().subtract(const Duration(minutes: 30)),
          //           ),
          //         );
          //         controller.update();
          //
          //       },
          //     );
          //   },
          // ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.grey[200],
            currentIndex: controller.bottomTab,
            onTap: (idx) {
              controller.setBottomTab(idx);
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(icon: Icon(Ionicons.cube_outline), label: "Inbox"),
              BottomNavigationBarItem(icon: Icon(Icons.tag), label: "Channels"),
              BottomNavigationBarItem(icon: Icon(Ionicons.chatbubble_outline), label: "Messages"),
              BottomNavigationBarItem(
                  icon: CircleAvatar(
                    radius: 12,
                    child: Text(
                      "d",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  label: "More"),
            ],
          ),
        );
      },
    );
  }
}
