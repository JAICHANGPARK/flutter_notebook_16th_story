import 'package:flutter_riverpod/flutter_riverpod.dart';

final mhChatProvider = StateNotifierProvider<ChatList, List<String>>((ref) => ChatList([], ref.read));

class ChatList extends StateNotifier<List<String>> {
  Reader ref;
  ChatList(List<String> state, this.ref) : super(state);
}
