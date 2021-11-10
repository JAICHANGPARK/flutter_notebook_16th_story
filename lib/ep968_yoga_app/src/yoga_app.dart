import 'package:flutter/material.dart';

import 'ui/yoga_home_screen.dart';


class YogaApp extends StatelessWidget {
  const YogaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: YogaHomeScreen(),
    );
  }
}
