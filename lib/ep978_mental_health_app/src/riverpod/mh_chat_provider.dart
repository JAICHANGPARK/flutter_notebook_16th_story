import 'package:flutter_riverpod/flutter_riverpod.dart';

final mhChatProvider = StateNotifierProvider<ChatList, List<String>>((ref) => ChatList([]));

class ChatList extends StateNotifier<List<String>> {
  ChatList(List<String> state) : super(state);
}
