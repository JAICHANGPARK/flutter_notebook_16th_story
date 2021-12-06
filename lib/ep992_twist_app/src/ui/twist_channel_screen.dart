import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_channel_controller.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/ui/channel_component.dart';
import 'package:get/get.dart';

import 'inbox_component.dart';

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
                icon: const Icon(Icons.arrow_back),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Lounge"),
                const Text("Public - 10 members"),
              ],
            ),
          ),

          Expanded(
              child: GetBuilder<TwistChannelController>(
            init: TwistChannelController(),
            builder: (c) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    var item = c.inboxItems[index];
                    return ChannelComponent(
                      twistChannel: item,
                    );
                  },
                  itemCount: c.inboxItems.length,
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
