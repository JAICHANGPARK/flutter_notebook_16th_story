import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/controller/bottom_tab_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecycleTrashHomePage extends ConsumerWidget {
  const RecycleTrashHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    int bottomIndex = ref.watch(recycleBottomTapController);
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        foregroundColor: Colors.teal,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.teal,
        type: BottomNavigationBarType.fixed,
        currentIndex: bottomIndex,
        onTap: (idx) {
          ref.read(recycleBottomTapController.notifier).state = idx;
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
        ],
      ),
    );
  }
}
