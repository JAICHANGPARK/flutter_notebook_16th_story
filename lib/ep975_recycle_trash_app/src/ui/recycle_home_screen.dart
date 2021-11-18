import 'package:flutter/material.dart';

class RecycleHomeScreen extends StatelessWidget {
  const RecycleHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Column(
                children: [
                  Text("Hi Dreamwalker"),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Spacer(),
              CircleAvatar(
                backgroundColor: Colors.teal[100],
                foregroundColor: Colors.teal,
                child: Icon(Icons.notifications_outlined),
              )
            ],
          ),
        )
      ],
    );
  }
}
