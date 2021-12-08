import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwistChatScreen extends StatelessWidget {
  const TwistChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
              ),
              Text("A warm welcome, team", style: TextStyle(
                fontSize: 20,
              ),),
              Row(
                children: [
                  Text(
                    "#",
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text("Lounge")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
