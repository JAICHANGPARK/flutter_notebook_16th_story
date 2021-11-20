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
            Row(
              children: [
                const Text("My Spaces"),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: const Text("SOS"),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Coolicons.settings_future),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
