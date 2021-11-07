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
  Stream<TodoState> mapEventToState(TodoEvent event) {
    // TODO: implement mapEventToState
    return super.mapEventToState(event);
  }
}
