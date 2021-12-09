import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/controller/twist_message_controller.dart';
import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_message.dart';
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
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetBuilder<TwistMessageController>(
                    builder: (controller) {
                      return ListView.builder(
                          itemCount: controller.chatItem.length,
                          itemBuilder: (context, index) {
                            var item = controller.chatItem[index];
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundImage: CachedNetworkImageProvider(
                                      item.img ?? "",
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              item.name ?? "-",
                                              style: const TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              item.ago ?? "-",
                                              style: const TextStyle(fontSize: 12),
                                            ),
                                            const Spacer(),
                                            const Icon(
                                              Icons.notifications,
                                              size: 12,
                                            ),
                                            Text(
                                              "${item.pinCount}",
                                              style: const TextStyle(fontSize: 12),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(item.msg ?? "", style: const TextStyle(
                                            fontSize: 13
                                        ),),
                                        const SizedBox(height: 8,),
                                        (item.like?.length ?? 0) > 0 ?
                                        SizedBox(
                                          height: 32,
                                          child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, index2) {

                                              if(index2 == (item.like?.length?? 0  + 1)){
                                                return CircleAvatar(
                                                  foregroundColor: Colors.black,
                                                  radius: 16,
                                                  backgroundColor: Colors.grey[200],
                                                  child: Icon(Icons.add),
                                                );
                                              }
                                              var tagItem = item.like?.entries.toList()[index2];
                                              switch (tagItem?.key ?? "") {
                                                case "favorite":
                                                  return Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                                    child: Row(
                                                      children: [
                                                        const Icon(Icons.favorite, color: Colors.red,
                                                        size: 16,),
                                                        const SizedBox(width: 2,),
                                                        Text("${tagItem?.value}"),
                                                      ],
                                                    ),
                                                  );
                                                case "heart":
                                                  return Container(
                                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                                    decoration: BoxDecoration(
                                                      color: Colors.grey[200],
                                                      borderRadius: BorderRadius.circular(16),
                                                    ),
                                                    padding: const EdgeInsets.symmetric(horizontal: 16),
                                                    child: Row(
                                                      children: [
                                                       Text("😍", ),
                                                        const SizedBox(width: 2,),
                                                        Text("${tagItem?.value}"),
                                                      ],
                                                    ),
                                                  );
                                              }


                                              return Container();

                                            },
                                            itemCount: ((item.like?.length ?? 0) + 1),
                                          ),
                                        )
                                            : Container()
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            );
                          });
                    },
                  ),
                )),
            Container(
              height: 58,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.bookmark_border),
                      foregroundColor: Colors.purple,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      child: const Icon(Icons.check_circle_outlined),
                      foregroundColor: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: const TextField(
                              decoration: InputDecoration(border: InputBorder.none, hintText: "Reply"),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
