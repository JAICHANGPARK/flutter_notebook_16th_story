import 'package:flutter/material.dart';


class FarmaciaHomeScreen extends StatelessWidget {
  const FarmaciaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 24,
            ),
            Column(
              children: [
                Text("Hello, Dream!"),
                Text("What are you looking for today?")
              ],
            )
          ],
        )

      ],
    );
  }
}
