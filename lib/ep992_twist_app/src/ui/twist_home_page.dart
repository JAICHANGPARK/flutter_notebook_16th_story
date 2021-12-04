import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_menu_contoller.dart';
import 'package:get/get.dart';


class TwistHomePage extends StatefulWidget {
  const TwistHomePage({Key? key}) : super(key: key);

  @override
  _TwistHomePageState createState() => _TwistHomePageState();
}

class _TwistHomePageState extends State<TwistHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TwistMenuController>(
      init: TwistMenuController(),
      builder: (controller){
        return Scaffold(
          body: IndexedStack(
            index: controller.bottomTab,

          ),
        );
      },

    );
  }
}
