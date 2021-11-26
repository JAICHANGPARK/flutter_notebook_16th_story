import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatScreenComponent extends ConsumerWidget {
  const ChatScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              color: Colors.black,
              width: 1.5)
      ),
      child: Column(
        children: [
          const Expanded(child: const Placeholder()),
          const SizedBox(height: 24,),
          Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36),
                border: Border.all(
                    color: Colors.black,
                    width: 1.5)
            ),
          )
        ],
      ),
    );
  }
}
