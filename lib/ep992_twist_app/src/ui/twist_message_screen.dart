import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_message_controller.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;

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
                return ListView.builder(
                    itemCount: controller.messageItem.length,
                    itemBuilder: (context, index) {
                      var messageBlock = controller.messageItem[index];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              child: messageBlock.images.length > 1
                                  ? Stack(
                                      children: [
                                        Positioned(
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: CachedNetworkImageProvider(
                                              messageBlock.images[0],
                                            ),
                                          ),
                                          top: 0,
                                          left: 0,
                                        ),
                                        Positioned(
                                          child: CircleAvatar(
                                            radius: 16,
                                            backgroundImage: CachedNetworkImageProvider(
                                              messageBlock.images[1],
                                            ),
                                          ),
                                          bottom: 0,
                                          right: 0,
                                        )
                                      ],
                                    )
                                  : Center(
                                    child: CircleAvatar(
                                radius: 18,
                                        backgroundColor: Colors.red,
                                        backgroundImage: CachedNetworkImageProvider(
                                          messageBlock.images.first,
                                        ),
                                      ),
                                  ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          messageBlock.name ?? "-",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(timeago.format(messageBlock.dateTime ?? DateTime.now()),
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),)
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      messageBlock.subtitle ?? "-",
                                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    });
              },
            ),
          )
        ],
      ),
    );
  }
}
