import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 8,
                ),
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
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Good Morning, Dream",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "We wish you have a good day",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(color: Colors.black),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.home,
                    color: Colors.teal,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.teal,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.apps,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(radius: 4, backgroundColor: Colors.black)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.calendar,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(radius: 4, backgroundColor: Colors.black)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.bar_chart,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(radius: 4, backgroundColor: Colors.black)
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Ionicons.bookmark,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  CircleAvatar(radius: 4, backgroundColor: Colors.black)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
