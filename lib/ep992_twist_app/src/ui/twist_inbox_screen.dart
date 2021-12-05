import 'package:flutter/material.dart';

class TwistInboxScreen extends StatefulWidget {
  const TwistInboxScreen({Key? key}) : super(key: key);

  @override
  _TwistInboxScreenState createState() => _TwistInboxScreenState();
}

class _TwistInboxScreenState extends State<TwistInboxScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text("Inbox"),
                Spacer(),
                IconButton(onPressed: () {}, icon: Icon(Icons.filter_list)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
