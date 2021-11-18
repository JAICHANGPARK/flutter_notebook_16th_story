import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/controller/rp_visivility_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecycleHomeScreen extends StatelessWidget {
  const RecycleHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
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
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.teal,
                size: 14,
              ),
              Text("Seoul, Republic of Korea")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.teal[200],
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text("Rapel Cash"),
                Row(
                  children: [
                    Text("RP 129,875"),
                    Consumer(
                      builder: (BuildContext context, WidgetRef ref, Widget? child) {
                        final v = ref.watch(rpVisibilityProvider);
                        if (v) return IconButton(onPressed: () {}, icon: Icon(Icons.visibility));
                        return IconButton(onPressed: () {}, icon: Icon(Icons.visibility_off));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
