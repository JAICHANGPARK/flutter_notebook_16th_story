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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 54,
                    width: 54,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                  ),
                  Text("Classed"),
                  CircleAvatar(
                    radius: 28,
                  )
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 84,
          decoration: BoxDecoration(color: Colors.black),
        ),
      ),
    );
  }
}
