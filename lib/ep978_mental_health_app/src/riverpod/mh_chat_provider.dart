import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/riverpod/chat_text_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mhChatProvider = StateNotifierProvider<ChatList, List<String>>((ref) => ChatList([], ref.read));

class ChatList extends StateNotifier<List<String>> {
  Reader read;

  ChatList(List<String> state, this.read) : super(state);

  add() {
    String msg = read(chatTextProvider).text.trim();
    print("add: msg: $msg");
    state.add(msg);
    
  }
}
