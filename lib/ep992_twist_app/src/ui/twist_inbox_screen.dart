import 'package:flutter/material.dart';

class TwistInboxScreen extends StatefulWidget {
  const TwistInboxScreen({Key? key}) : super(key: key);

  @override
  _TwistInboxScreenState createState() => _TwistInboxScreenState();
}

class _TwistInboxScreenState extends State<TwistInboxScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("Inbox"),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
            IconButton(onPressed: () {}, icon: Icon(Icons.filter)),
          ],
        )
      ],
    );
  }
}
