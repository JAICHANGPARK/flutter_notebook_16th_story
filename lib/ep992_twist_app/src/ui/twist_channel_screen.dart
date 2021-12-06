import 'package:flutter/material.dart';

class TwistChannelScreen extends StatelessWidget {
  const TwistChannelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            ],
          ),
          Text("Lounge"),
          Text("Public - 10 members"),

        ],
      ),
    );
  }
}
