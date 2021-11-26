import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatScreenComponent extends ConsumerWidget {
  const ChatScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              color: Colors.black,
              width: 1.5)
      ),
      child: Column(
        children: [
          Expanded(child: Placeholder()),
          Container(
            height: 72,
            decoration: BoxDecoration(
              color: Colors.yellow
            ),
          )
        ],
      ),
    );
  }
}
