import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/ep968_yoga_app/src/bloc/yoga_tab_bloc.dart';
import 'package:ionicons/ionicons.dart';

class YogaHomeScreen extends StatefulWidget {
  const YogaHomeScreen({Key? key}) : super(key: key);

  @override
  _YogaHomeScreenState createState() => _YogaHomeScreenState();
}

class _YogaHomeScreenState extends State<YogaHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<YogaBottomTabBlock, int>(
          builder: (context, count) {
            return IndexedStack(
              index: count,
              children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey[300]!),
                              ),
                              child: const Icon(Icons.notifications_outlined),
                            ),
                            const Text(
                              "Beyoga",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const CircleAvatar(
                              radius: 24,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          "Good Morning, Dream",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          "We wish you have a good day",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: const Center(
                    child: const Text("Hello 1"),
                  ),
                ),
                Container(
                  child: const Center(
                    child: const Text("Hello 2"),
                  ),
                ),
                Container(
                  child: const Center(
                    child: const Text("Hello 3"),
                  ),
                ),
                Container(
                  child: const Center(
                    child: const Text("Hello 4"),
                  ),
                )
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: BlocBuilder<YogaBottomTabBlock, int>(builder: (context, index) {
        return BottomAppBar(
          child: Container(
            height: 80,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: const BoxDecoration(color: Colors.black),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<YogaBottomTabBlock>().setTabIndex(0);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.home,
                        color: index == 0 ? Colors.teal : Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: index == 0 ? Colors.teal : Colors.black,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<YogaBottomTabBlock>().setTabIndex(1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.apps,
                        color: index == 1 ? Colors.teal : Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: index == 1 ? Colors.teal : Colors.black,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<YogaBottomTabBlock>().setTabIndex(2);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.calendar,
                        color: index == 2 ? Colors.teal : Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: index == 2 ? Colors.teal : Colors.black,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<YogaBottomTabBlock>().setTabIndex(3);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.bar_chart,
                        color: index == 3 ? Colors.teal : Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: index == 3 ? Colors.teal : Colors.black,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<YogaBottomTabBlock>().setTabIndex(4);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Ionicons.bookmark,
                        color: index == 4 ? Colors.teal : Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: index == 4 ? Colors.teal : Colors.black,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
