import 'package:flutter/material.dart';

class TaskManagerHomeScreen extends StatefulWidget {
  const TaskManagerHomeScreen({Key? key}) : super(key: key);

  @override
  _TaskManagerHomeScreenState createState() => _TaskManagerHomeScreenState();
}

class _TaskManagerHomeScreenState extends State<TaskManagerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Container(
            color: Colors.black,
          )),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [], begin: Alignment.bottomCenter,
                end: Alignment.topCenter)
              ),
            ),
            left: 0,
            right: 0,
            bottom: 0,
          )
        ],
      ),
    );
  }
}
