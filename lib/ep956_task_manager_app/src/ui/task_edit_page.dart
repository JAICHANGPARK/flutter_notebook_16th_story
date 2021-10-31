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
        title: const Text("Edit Task"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
      ),
      body: Column(
        children: [
          const Expanded(child: Placeholder()),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
            child: const Center(
              child: const Text(
                "Save Task",
                style: const TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
