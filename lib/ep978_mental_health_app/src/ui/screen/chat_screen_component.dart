import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/riverpod/chat_text_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChatScreenComponent extends ConsumerWidget {
  const ChatScreenComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(24), border: Border.all(color: Colors.black, width: 1.5)),
      child: Column(
        children: [
          const Expanded(child: const Placeholder()),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(36), border: Border.all(color: Colors.black, width: 1.5)),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: ref.read(chatTextProvider),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                )),
                SizedBox(
                  width: 16,
                ),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.yellow,
                      border: Border.all(
                        color: Colors.black,
                        width: 1.5,
                      )),
                  child: Transform.rotate(
                    angle: -pi / 4,
                    child: Center(
                      child: Icon(Icons.send
                      ,
                      size: 20,),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
