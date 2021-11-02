import 'package:flutter/material.dart';

import 'src/ui/money_transfet_main_page.dart';


class MoneyTransferApp extends StatelessWidget {
  const MoneyTransferApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoneyTransferMainPage(),
    );
  }
}
