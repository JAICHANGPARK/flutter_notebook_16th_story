import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatScreenComponent extends ConsumerWidget {
  const ChatScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Column(
      children: [
        Expanded(child: Placeholder()),
        Container(
          height: 72,
          decoration: BoxDecoration(
            color: Colors.yellow
          ),
        )
      ],
    );
  }
}
