import 'package:coolicons/coolicons.dart';
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
              left: 16,
              right: 16,
              top: 16,
              bottom: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.apps),
                        ),
                      )),
                      const Expanded(
                          child: Center(
                              child: Text(
                        "Task Manager",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: const [
                            Icon(Coolicons.notification_outline),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.red,
                                ))
                          ],
                        ),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Welcome Back!",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Here's Update Today.",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Coolicons.search),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 200,
                              decoration:
                                  const BoxDecoration(color: Colors.yellow),
                            );
                          }))
                ],
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
