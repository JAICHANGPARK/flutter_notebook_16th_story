import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_message.dart';
import 'package:get/get.dart';

class TwistMessageController extends GetxController {
  final List<TwistMessage> _messageItem = [
    TwistMessage(
        name: "Generalist",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 13)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          "https://cdn.pixabay.com/photo/2016/07/22/16/54/portrait-1535266_960_720.jpg",
        ]),
    TwistMessage(
        name: "Ada",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
    TwistMessage(
        name: "Product Design Group",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2017/05/12/11/29/girl-2306829_960_720.jpg",
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
    TwistMessage(
        name: "Generalist",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 13)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          "https://cdn.pixabay.com/photo/2016/07/22/16/54/portrait-1535266_960_720.jpg",
        ]),
    TwistMessage(
        name: "Ada",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
    TwistMessage(
        name: "Product Design Group",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2017/05/12/11/29/girl-2306829_960_720.jpg",
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
    TwistMessage(
        name: "Generalist",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 13)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
          "https://cdn.pixabay.com/photo/2016/07/22/16/54/portrait-1535266_960_720.jpg",
        ]),
    TwistMessage(
        name: "Ada",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
    TwistMessage(
        name: "Product Design Group",
        subtitle: "John: OK! That's super nice. Let's more flutter development",
        dateTime: DateTime.now().subtract(const Duration(minutes: 52)),
        images: [
          "https://cdn.pixabay.com/photo/2017/05/12/11/29/girl-2306829_960_720.jpg",
          "https://cdn.pixabay.com/photo/2014/09/25/22/14/profile-461076_960_720.jpg",
        ]),
  ];

  List<TwistMessage> get messageItem => _messageItem;
  List<TwistChat> get chatItem => _chatItem;
  List<TwistChat> _chatItem = [
    TwistChat(
      img: "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
      msg:
          "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
              "\n "
              "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
              "aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit "
              "in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
              "\nExcepteur sint occaecat cupidatat non proident, "
              "sunt in culpa qui officia deserunt mollit anim id est laborum"
              "\n"
              "Thanks",
      like: {
        "favorite": 14,
        "heart": 4,
      },
      pinCount: 14,
    ),
    TwistChat(
      img: "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
      msg:
    "Super exited to give this a try",
      like: {},
      pinCount: 1,
    ),
    TwistChat(
      img: "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg",
      msg:
      "I'm already loving this",
      like: {
        "favorite": 1,
      },
      pinCount: 1,
    ),
  ];
}
