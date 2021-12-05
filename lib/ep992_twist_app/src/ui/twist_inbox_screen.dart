import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_inbox_controller.dart';
import 'package:get/get.dart';
import 'package:timeago/timeago.dart' as timeago;

class TwistInboxScreen extends StatelessWidget {
  const TwistInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TwistInboxController twistInboxController = Get.put(TwistInboxController());
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Inbox",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            ),
            Expanded(
                child: ListView.builder(
              itemCount: twistInboxController.inboxItems.length,
              itemBuilder: (context, index) {
                var item = twistInboxController.inboxItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.title ?? "-"),
                                Text(
                                  item.subtitle ?? "-",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(timeago.format(item.dateTime ?? DateTime.now())),
                              CircleAvatar(
                                radius: 14,
                                backgroundImage: CachedNetworkImageProvider(item.img ?? ""),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), border: Border.all()),
                        child: Row(
                          children: [Text("# ${item.tag}")],
                        ),
                      )
                    ],
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
