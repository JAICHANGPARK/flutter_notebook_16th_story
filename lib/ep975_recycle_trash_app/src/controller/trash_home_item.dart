


import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/model/trash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrashList extends StateNotifier<List<Trash>>{
  TrashList(List<Trash> state) : super(state);

}