import 'package:coolicons/coolicons.dart';
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text(
                    "My Spaces",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.black, width: 1.5)),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: const Text("SOS"),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Coolicons.settings_future),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello Dreamwalker"),
                    Text("Let's explore all the features here")
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
