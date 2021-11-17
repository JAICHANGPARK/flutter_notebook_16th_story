import 'package:flutter/material.dart';


class RecycleTrashHomePage extends StatelessWidget {
  const RecycleTrashHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.teal,
        backgroundColor: Colors.white, onPressed: () {  },
      ),
    );
  }
}
