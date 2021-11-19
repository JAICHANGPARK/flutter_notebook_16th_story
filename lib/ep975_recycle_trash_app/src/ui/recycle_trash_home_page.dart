import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/controller/bottom_tab_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controller/recycle_fab_counter.dart';
import 'recycle_home_screen.dart';

class RecycleTrashHomePage extends ConsumerWidget {
  const RecycleTrashHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    int bottomIndex = ref.watch(recycleBottomTapController);
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: bottomIndex,
            children: const [
          RecycleHomeScreen(),
          Center(
            child: Text("Page 2"),
          ),
          Center(
            child: Text("Page 3"),
          ),
          Center(
            child: Text("Page 4"),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        foregroundColor: Colors.teal,
        backgroundColor: Colors.white,
        onPressed: () {
          ref.read(recycleFabCounterProvider.notifier).state++;
          ScaffoldMessenger.of(context).clearSnackBars();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${ref.read(recycleFabCounterProvider)}")));
        },
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
          BottomNavigationBarItem(icon: Icon(Icons.add_chart), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "home")
        ],
      ),
    );
  }
}
