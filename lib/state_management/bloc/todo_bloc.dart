import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_event.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState>{
  TodoBloc(TodoState initialState) : super(initialState);
  
}