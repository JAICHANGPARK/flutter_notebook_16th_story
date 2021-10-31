import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskEditPage extends StatefulWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  List<Color> _colorItem = [
    const Color(0xff4beed1),
    const Color(0xfffbe114),
    const Color(0xff3ed1f0),
    const Color(0xffb6adff),
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Task"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Color Task"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _colorItem
                            .map((e) => const CircleAvatar(
                                  radius: 8,
                                ))
                            .toList(),
                      )),
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                        child: Icon(Icons.add),
                      )
                    ],
                  ),
                )
              ],
            )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(
                child: Text(
                  "Save Task",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
