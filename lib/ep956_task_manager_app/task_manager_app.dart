import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep956_task_manager_app/src/ui/task_manger_home_screen.dart';
import 'package:get/get.dart';


class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        home: TaskManagerHomeScreen(),
    );
  }
}
