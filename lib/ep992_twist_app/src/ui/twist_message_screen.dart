import 'package:flutter/material.dart';

class TwistMessageScreen extends StatelessWidget {
  const TwistMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text("Messages"),
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            ],
          )

        ],
      ),
    );
  }
}
