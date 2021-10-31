import 'package:flutter/material.dart';


class TaskEditPage extends StatefulWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Edit Task"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
      ),
      body: Column(
        children: [
          Expanded(child: Placeholder())
        ],
      ),
    );
  }
}
