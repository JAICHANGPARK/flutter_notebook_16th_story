import 'package:flutter/material.dart';


class MentalHealthMainScreen extends StatefulWidget {
  const MentalHealthMainScreen({Key? key}) : super(key: key);

  @override
  _MentalHealthMainScreenState createState() => _MentalHealthMainScreenState();
}

class _MentalHealthMainScreenState extends State<MentalHealthMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text("My Spaces"),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.yellow,border: Border.all(
                    color: Colors.black,
                  )
                  ),
                )
              ],
            )
          ],
        ),
      ) ,
    );
  }
}
