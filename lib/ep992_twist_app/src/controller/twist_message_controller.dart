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


  List<TwistChat> _chatItem = [];

}
