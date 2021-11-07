import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/repo/bloc_repo.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_event.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_state.dart';

import 'model/bloc_todo.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodoRepository repository;

  TodoBloc({
    required this.repository,
  }) : super(Empty());

  @override
  Stream<TodoState> mapEventToState(TodoEvent event) async* {
    if (event is ListTodosEvent) {
      yield* _mapListTodosEvent(event);
    } else if (event is CreateTodoEvent) {
      yield* _mapCreateTodosEvent(event);
    } else if (event is DeleteTodoEvent) {
      yield* _mapDeleteTodosEvent(event);
    }
  }

  Stream<TodoState> _mapListTodosEvent(ListTodosEvent event) async* {
    try {
      yield Loading();
      final resp = await repository.listTodo();
      final todos = resp.map<Todo>((e) => Todo.fromJson(e)).toList();
      yield Loaded(todos: todos);
    } catch (e) {
      yield Error(message: e.toString());
    }
  }

  Stream<TodoState> _mapCreateTodosEvent(CreateTodoEvent event) async* {
    try {
      if (state is Loaded) {
        final parsedState = (state as Loaded);
        final newTodo = Todo(
          id: parsedState.todos[parsedState.todos.length - 1].id + 1,
          title: event.title,
          createdAt: DateTime.now().toString(),
        );

        final prevTodos = [
          ...parsedState.todos,
        ];

        final newTodos = [
          ...prevTodos,
          newTodo,
        ];

        yield Loaded(todos: newTodos);

        await repository.createTodo(newTodo);
      }
    } catch (e) {
      yield Error(message: e.toString());
    }
  }

  Stream<TodoState> _mapDeleteTodosEvent(DeleteTodoEvent event) async* {}
}
