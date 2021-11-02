import 'package:flutter/material.dart';

class MoneyTransferMainPage extends StatefulWidget {
  const MoneyTransferMainPage({Key? key}) : super(key: key);

  @override
  _MoneyTransferMainPageState createState() => _MoneyTransferMainPageState();
}

class _MoneyTransferMainPageState extends State<MoneyTransferMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 20,
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Add New",style: TextStyle(
                            color: Colors.white,
                            fontSize: 12
                          ),),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
