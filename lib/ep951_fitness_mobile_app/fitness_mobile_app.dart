import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/ui/fitness_main_page.dart';


class FitnessMobileApp extends StatelessWidget {
  const FitnessMobileApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        routes: {
          "/" :(context) => const FitnessMainPage()
        },
    );
  }
}
