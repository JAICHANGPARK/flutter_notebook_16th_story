import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TwistChatScreen extends StatelessWidget {
  const TwistChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: (){
                  Get.back();
                },
                icon: const Icon(Icons.arrow_back),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
