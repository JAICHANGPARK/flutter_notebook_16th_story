import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep988_travel_app/src/ui/travel_main_page.dart';

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelMainPage(),
    );
  }
}
