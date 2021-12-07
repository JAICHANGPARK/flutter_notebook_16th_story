import 'package:flutter_notebook_16th_story/ep992_twist_app/src/model/twist_message.dart';
import 'package:get/get.dart';

class TwistMessageController extends GetxController{
  final List<TwistMessage> _messageItem = [
    TwistMessage(
      name: "Generalist",
      subtitle: "John: OK! That's super nice. Let's more flutter development",
      dateTime: DateTime.now().subtract(Duration())
    ),
  ];

  List<TwistMessage> get messageItem => _messageItem;


}