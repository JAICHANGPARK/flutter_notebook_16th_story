import 'package:flutter/material.dart';

class RecycleHomeScreen extends StatelessWidget {
  const RecycleHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12,24,12,0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Hi Dreamwalker"),
                  SizedBox(
                    height: 4,
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
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.teal[100],
                foregroundColor: Colors.teal,
                child: const Icon(Icons.notifications_outlined),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Icon(Icons.location_on, color: Colors.teal,
              size: 14,),
              Text("Seoul, Republic of Korea")


            ],
          ),
        )
      ],
    );
  }
}
