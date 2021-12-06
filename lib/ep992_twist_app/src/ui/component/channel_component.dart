import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_channel.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_inbox.dart';
import 'package:timeago/timeago.dart' as timeago;

class ChannelComponent extends StatelessWidget {
  final TwistChannel? twistChannel;
  ChannelComponent({Key? key, this.twistChannel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      twistChannel?.title ?? "-",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      twistChannel?.subtitle ?? "-",
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    timeago.format(twistChannel?.dateTime ?? DateTime.now()),
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundImage: CachedNetworkImageProvider(twistChannel?.img ?? ""),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(16),
          //     border: Border.all(color: Colors.grey),
          //   ),
          //   padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
          //   child: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       Text(
          //         "# ${twistInbox?.tag}",
          //         style: const TextStyle(fontSize: 12),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
