import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/farmacia_home_page.dart';

class FarmaciaApp extends StatelessWidget {
  const FarmaciaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: FarmaciaHomePage(),
    );
  }
}
