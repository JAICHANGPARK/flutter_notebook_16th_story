import 'package:flutter/material.dart';

import 'src/ui/screen/mental_health_main_screen.dart';


class MentalHealthApp extends StatelessWidget {
  const MentalHealthApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mental Health App",
      debugShowCheckedModeBanner: false,
      home: MentalHealthMainScreen(),
    );
  }
}
