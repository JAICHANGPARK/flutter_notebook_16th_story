import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_message_controller.dart';
import 'package:get/get.dart';

class TwistMessageScreen extends StatelessWidget {
  const TwistMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Messages",
                  style: TextStyle(fontSize: 18),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          Expanded(
            child: GetBuilder<TwistMessageController>(
              init: TwistMessageController(),
              builder: (controller) {
                return ListView.builder(itemBuilder: (context, index) {
                  return Row();
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
