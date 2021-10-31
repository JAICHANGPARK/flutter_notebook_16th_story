import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep956_task_manager_app/src/controller/tab_controller.dart';
import 'package:flutter_notebook_16th_story/ep956_task_manager_app/src/data/fake_today_task.dart';
import 'package:flutter_notebook_16th_story/ep956_task_manager_app/src/ui/task_edit_page.dart';
import 'package:get/get.dart';

class TaskManagerHomeScreen extends StatefulWidget {
  const TaskManagerHomeScreen({Key? key}) : super(key: key);

  @override
  _TaskManagerHomeScreenState createState() => _TaskManagerHomeScreenState();
}

class _TaskManagerHomeScreenState extends State<TaskManagerHomeScreen> {
  int? _tabIndex = 0;
  final taskTabController = Get.put(TaskTabController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 16,
              right: 16,
              top: 16,
              bottom: 0,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Expanded(
                          child: Align(
                        alignment: Alignment.centerLeft,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Icons.apps),
                        ),
                      )),
                      const Expanded(
                          child: Center(
                              child: Text(
                        "Task Manager",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))),
                      Expanded(
                          child: Align(
                        alignment: Alignment.centerRight,
                        child: Stack(
                          children: const [
                            Icon(Coolicons.notification_outline),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: CircleAvatar(
                                  radius: 4,
                                  backgroundColor: Colors.red,
                                ))
                          ],
                        ),
                      )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Welcome Back!",
                              style: TextStyle(fontSize: 15),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Here's Update Today.",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                          child: Icon(Coolicons.search),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 36,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        GestureDetector(
                          onTap: () {
                            taskTabController.setTabIndex(0);
                            setState(() {
                              _tabIndex = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _tabIndex == 0 ? Colors.black : Colors.transparent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 36),
                            child: Center(
                              child: Text(
                                "Today",
                                style: TextStyle(color: _tabIndex == 0 ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            taskTabController.setTabIndex(1);
                            setState(() {
                              _tabIndex = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _tabIndex == 1 ? Colors.black : Colors.transparent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Center(
                              child: Text(
                                "Upcoming",
                                style: TextStyle(color: _tabIndex == 1 ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {
                            taskTabController.setTabIndex(2);
                            setState(() {
                              _tabIndex = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: _tabIndex == 2 ? Colors.black : Colors.transparent,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 32),
                            child: Center(
                              child: Text(
                                "Task Done",
                                style: TextStyle(
                                  color: _tabIndex == 2 ? Colors.white : Colors.black,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<TaskTabController>(
                      builder: (controller) {
                        return IndexedStack(
                          index: controller.tabIndex,
                          children: [
                            ListView.builder(
                                itemCount: fakeTodayTask.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8),
                                    child: Container(
                                      // height: 180,
                                      decoration: BoxDecoration(
                                          color: fakeTodayTask[index].backgroundColorRGB,
                                          borderRadius: BorderRadius.circular(8)),
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 28,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    child: ListView.builder(
                                                        scrollDirection: Axis.horizontal,
                                                        itemCount: fakeTodayTask[index].tags?.length,
                                                        itemBuilder: (context, idx2) {
                                                          String _tag = fakeTodayTask[index].tags?[idx2] ?? "";
                                                          return GestureDetector(
                                                            onTap: () {},
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(right: 12),
                                                              child: Container(
                                                                padding: const EdgeInsets.symmetric(
                                                                    horizontal: 12, vertical: 4),
                                                                decoration: BoxDecoration(
                                                                    border: Border.all(
                                                                      color: Colors.black45,
                                                                    ),
                                                                    borderRadius: BorderRadius.circular(24)),
                                                                child: Center(
                                                                  child: Text(_tag),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        })),
                                                GestureDetector(
                                                  onTap: () {
                                                    Get.to(TaskEditPage());
                                                  },
                                                  child: Container(
                                                      padding: const EdgeInsets.all(4),
                                                      decoration: BoxDecoration(
                                                          color: Colors.black, borderRadius: BorderRadius.circular(4)),
                                                      child: Icon(
                                                        Icons.edit,
                                                        color: fakeTodayTask[index].backgroundColorRGB,
                                                        size: 12,
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(vertical: 16),
                                            child: Text(
                                              "Taking My Sister To School",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.calendar_today_outlined,
                                                          size: 12,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text("${fakeTodayTask[index].date}"),
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 12,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(
                                                          Icons.timer,
                                                          size: 12,
                                                        ),
                                                        const SizedBox(
                                                          width: 8,
                                                        ),
                                                        Text("${fakeTodayTask[index].time} "
                                                            "(Remind At ${fakeTodayTask[index].remindAt})"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 32,
                                                width: 32,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 2,
                                                    )),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                            Container(
                              child: const Center(
                                child: Center(
                                  child: Text("Upcoming Tab"),
                                ),
                              ),
                            ),
                            Container(
                              child: const Center(
                                child: Center(
                                  child: Text("Task Done"),
                                ),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.75),
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.25),
                  Colors.white.withOpacity(0.1),
                ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
                // child: Center(
                //   child: Container(
                //
                //     decoration: BoxDecoration(
                //       color: Colors.black,
                //       borderRadius: BorderRadius.circular(24)
                //     ),
                //     child: Row(
                //       children: [
                //         Icon(Icons.add_box,),
                //         Text("")
                //
                //       ],
                //     ),
                //   ),
                // ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
        onPressed: () {},
        label: const Text("Add Task"),
        icon: const Icon(Icons.add_box),
      ),
    );
  }
}
