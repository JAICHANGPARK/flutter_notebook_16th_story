import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/repo/bloc_repo.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_event.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_state.dart';

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
      
    } catch (e) {
      yield Error(message: e.toString());
    }
  }
}
