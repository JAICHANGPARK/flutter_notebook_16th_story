import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/repo/bloc_repo.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_bloc.dart';
import 'package:flutter_notebook_16th_story/state_management/bloc/todo_state.dart';

class BlocHomePage extends StatefulWidget {
  const BlocHomePage({Key? key}) : super(key: key);

  @override
  _BlocHomePageState createState() => _BlocHomePageState();
}

class _BlocHomePageState extends State<BlocHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (BuildContext context) {
          return TodoBloc(repository: TodoRepository());
        },
        child: const HomeWidget(),
      ),
    );
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  String title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (val) {
                title = val;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            BlocBuilder<TodoBloc, TodoState>(builder: (_, state) {
              if (state is Empty) {
                return Container();
              } else if (state is Error) {
                return Container(
                  child: Text(state.message),
                );
              } else if (state is Loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is Loaded) {
                final items = state.todos;
                return ListView.separated(
                    itemBuilder: (_, index) {
                      final item = items[index];
                      return Row(
                        children: [
                          Expanded(child: Text(item.title)),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(Icons.delete),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (_, index) => const Divider(),
                    itemCount: items.length);
              }
              return Container();
            })
          ],
        ),
      ),
    );
  }
}
