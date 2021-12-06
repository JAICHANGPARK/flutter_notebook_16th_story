import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_channel_controller.dart';
import 'package:get/get.dart';

class TwistChannelScreen extends StatelessWidget {
  const TwistChannelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          Text("Lounge"),
          Text("Public - 10 members"),
          Expanded(
              child: GetBuilder<TwistChannelController>(
            init: TwistChannelController(),
            builder: (c) {
              return ListView.builder(
                itemBuilder: (context, index) {},
                itemCount: c.inboxItems.length,
              );
            },
          ))
        ],
      ),
    );
  }
}
