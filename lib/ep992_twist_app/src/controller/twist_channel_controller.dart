import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_channel.dart';
import 'package:get/get.dart';

import '../model/twist_inbox.dart';

class TwistChannelController extends GetxController {
  final List<TwistChannel> _inboxItems = [
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 15)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 20)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 120)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 30)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 15)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 20)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 120)),
    ),
    TwistChannel(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(const Duration(minutes: 30)),
    ),
  ];

  List<TwistChannel> get inboxItems => _inboxItems;

  addItem(TwistChannel twistChannel) {
    _inboxItems.add(twistChannel);
    update();
  }
}
