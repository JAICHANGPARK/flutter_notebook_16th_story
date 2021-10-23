import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';

class FitnessMainPage extends StatefulWidget {
  const FitnessMainPage({Key? key}) : super(key: key);

  @override
  _FitnessMainPageState createState() => _FitnessMainPageState();
}

class _FitnessMainPageState extends State<FitnessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Hi Malik"),
                  Text("You've free trial class"),
                ],
              ),
              Spacer(),
              Icon(Coolicons.menu_alt_02),
            ],
          )
        ],
      ),
    );
  }
}
