import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/model/trash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final trashListProvider = StateNotifierProvider<TrashList, List<Trash>>((ref) {
  return TrashList(List.generate(
    10,
    (index) => Trash(title: "Sample${index}", subtitle: "12 kail"),
  ));
});

class TrashList extends StateNotifier<List<Trash>> {
  TrashList(List<Trash> state) : super(state);
}
