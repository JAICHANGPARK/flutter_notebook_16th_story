import 'package:flutter/material.dart';

class YogaHomeScreen extends StatefulWidget {
  const YogaHomeScreen({Key? key}) : super(key: key);

  @override
  _YogaHomeScreenState createState() => _YogaHomeScreenState();
}

class _YogaHomeScreenState extends State<YogaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: const Icon(Icons.notifications_outlined),
                  ),
                  const Text(
                    "Beyoga",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const CircleAvatar(
                    radius: 24,
                  )
                ],
              ),
              Text(
                "Good Morning, Dream",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "We wish you have a good day",
                style: TextStyle(
                  color: Colors.grey,
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 72,
          decoration: const BoxDecoration(color: Colors.black),
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
