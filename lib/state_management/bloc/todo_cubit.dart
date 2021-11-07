import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/repo/bloc_repo.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_state.dart';

import 'model/bloc_todo.dart';

class TodoCubit extends Cubit<TodoState> {
  final TodoRepository repository;

  TodoCubit({required this.repository}) : super(Empty());

  listTodo() async {
    try {
      emit(Loading());
      final resp = await repository.listTodo();
      final todos = resp.map<Todo>((e) => Todo.fromJson(e)).toList();
      emit(Loaded(todos: todos));
    } catch (e) {
      emit(Error(message: e.toString()));
    }
  }
}
