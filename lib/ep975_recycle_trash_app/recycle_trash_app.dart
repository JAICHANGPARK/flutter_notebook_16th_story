import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/ui/recycle_trash_home_page.dart';

class RecycleTrashApp extends StatelessWidget {
  const RecycleTrashApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        home: RecycleTrashHomePage(),
      ),
    );
  }
}
