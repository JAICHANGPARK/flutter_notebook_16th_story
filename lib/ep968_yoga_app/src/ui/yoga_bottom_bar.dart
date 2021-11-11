import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/ep968_yoga_app/src/bloc/yoga_tab_bloc.dart';
import 'package:ionicons/ionicons.dart';


class YogaBottomBar extends StatelessWidget {
  const YogaBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<YogaBottomTabBlock, int>(builder: (context, index) {
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
    });
  }
}
