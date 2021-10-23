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
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi Malik",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text("You've free trial class"),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Clicked Menu button",
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Coolicons.menu_alt_02)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                height: 280,
                child: Placeholder(),
              ),
            ),
            Container(
              height: 84,
              child: Placeholder(),
            ),
            Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
