import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/ui/twist_home_page.dart';


class TwistApp extends StatelessWidget {
  const TwistApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff008AA6)  /// 0 138 166  8a  a6
      ),
    home: TwistHomePage(),
    );
  }
}
