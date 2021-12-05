import 'package:flutter/material.dart';

class TwistInboxScreen extends StatelessWidget {
  const TwistInboxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return Row(
                  children: [],
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
