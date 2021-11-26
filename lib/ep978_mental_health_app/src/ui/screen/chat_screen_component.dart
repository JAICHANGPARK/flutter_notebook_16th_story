import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class ChatScreenComponent extends ConsumerWidget {
  const ChatScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
              color: Colors.black,
              width: 1.5)
      ),
      child: Column(
        children: [
          Expanded(child: Placeholder()),
          SizedBox(height: 16,),
          Container(
            height: 64,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
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
