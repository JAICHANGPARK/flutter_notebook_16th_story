import 'package:flutter/material.dart';

import 'src/ui/inspiration_page.dart';

/// Rest in peace..
///
class VirgilAblohApp extends StatelessWidget {
  const VirgilAblohApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InspirationPage(),
    );
  }
}
