import 'package:flutter_notebook_16th_story/state_management/bloc/model/bloc_todo.dart';

class TodoRepository {
  Future<List<Map<String, dynamic>>> listTodo() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      {'id': 1, 'title': "Future 1", 'createdAt': DateTime.now().toString()},
      {'id': 2, 'title': "Future 2", 'createdAt': DateTime.now().toString()}
    ];
  }

  Future<Map<String, dynamic>> createTodo(Todo todo) async {
    await Future.delayed(const Duration(seconds: 1));
    return todo.toJson();
  }

  Future<Map<String, dynamic>> deleteTodo(Todo todo) async {
    await Future.delayed(const Duration(seconds: 1));
    return todo.toJson();
  }
}
