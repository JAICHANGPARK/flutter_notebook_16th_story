import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/ep968_yoga_app/src/bloc/yoga_tab_bloc.dart';

import 'ui/yoga_home_screen.dart';


class YogaApp extends StatelessWidget {
  const YogaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
          create: (_)=> YogaBottomTabBlock(),
          child: const YogaHomeScreen()),
    );
  }
}
