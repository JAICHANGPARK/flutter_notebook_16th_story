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
                  const Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                    size: 20,
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Add New",
                            style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 0.8,
                        width: 74,
                        color: Colors.white,
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
