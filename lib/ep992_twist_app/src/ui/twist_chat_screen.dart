import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwistChatScreen extends StatelessWidget {
  const TwistChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                const Spacer(),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "A warm welcome, team",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: const [
                      Text(
                        "#",
                        style: TextStyle(color: Colors.orange),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Lounge")
                    ],
                  ),
                ],
              ),
            ),
            Expanded(child: Placeholder()),
            Container(height: 58,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                  ),
                  SizedBox(width: 8,),
                  CircleAvatar(
                    backgroundColor: Colors.grey[200],
                  ),
                  SizedBox(width: 8,),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(24)
                      ),
                    ),
                  ))
                ],
              ),
            ),),


          ],
        ),
      ),
    );
  }
}
