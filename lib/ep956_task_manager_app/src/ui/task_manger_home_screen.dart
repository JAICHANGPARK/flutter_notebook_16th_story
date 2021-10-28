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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Column(
                children: [],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.75),
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.25),
                  Colors.white.withOpacity(0.1),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
