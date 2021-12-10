import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep998_english_word_learning_app/src/ui/english_word_main_page.dart';
class EnglishWordLearningApp extends StatelessWidget {
  const EnglishWordLearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: EwlMainPage(),
    );
  }
}

