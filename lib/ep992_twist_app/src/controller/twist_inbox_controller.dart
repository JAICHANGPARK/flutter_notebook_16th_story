import 'package:get/get.dart';

import '../model/twist_inbox.dart';

class TwistInboxController extends GetxController {
  List<TwistInbox> _inboxItems = [
    TwistInbox(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      tag: "Development",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(Duration(minutes: 15)),
    ),
    TwistInbox(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      tag: "Development",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(Duration(minutes: 15)),
    ),
    TwistInbox(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      tag: "Development",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(Duration(minutes: 15)),
    ),
    TwistInbox(
      title: "New settings enabled",
      subtitle: "John: Ok! That's super nice. For now let's move forward with this until someone blah...",
      tag: "Development",
      img: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
      dateTime: DateTime.now().subtract(Duration(minutes: 15)),
    ),
  ];

  List<TwistInbox> get inboxItems => _inboxItems;
}
