import 'package:equatable/equatable.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/model/bloc_todo.dart';

abstract class TodoState extends Equatable {}

class Empty extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Loading extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class Error extends TodoState {
  final String message;

  Error({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}

class Loaded extends TodoState {
  final List<Todo> todos;

  Loaded({required this.todos});

  @override
  // TODO: implement props
  List<Object?> get props => [todos];
}
