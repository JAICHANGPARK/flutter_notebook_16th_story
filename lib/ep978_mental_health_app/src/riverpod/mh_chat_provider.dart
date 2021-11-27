import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/model/mh_chat.dart';
import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/riverpod/chat_text_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

final mhChatProvider = StateNotifierProvider<ChatList, List<MhChat>>((ref) => ChatList([], ref.read));

class ChatList extends StateNotifier<List<MhChat>> {
  Reader read;

  ChatList(List<MhChat> state, this.read) : super(state);

  add() {
    String msg = read(chatTextProvider).text.trim();

    print("add: msg: $msg");
    state = [
      ...state,
      MhChat(
          profileImg: "https://cdn.pixabay.com/photo/2021/11/15/05/52/red-fox-6796430_960_720.jpg",
          isSend: true,
          msg: msg,
          uid: const Uuid().v4())
    ];
  }
}
