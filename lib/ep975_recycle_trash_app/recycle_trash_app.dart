import 'package:flutter/material.dart';

import 'src/ui/recycle_trash_home_page.dart';

class RecycleTrashApp extends StatelessWidget {
  const RecycleTrashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecycleTrashHomePage(),
    );
  }
}
