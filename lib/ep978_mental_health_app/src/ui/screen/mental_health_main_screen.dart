import 'package:cached_network_image/cached_network_image.dart';
import 'package:coolicons/coolicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/riverpod/bottom_tab_provider.dart';
import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/ui/screen/mental_wellness_component.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

import '../../data/fake_wellness.dart';
import 'mental_chat_component.dart';
import 'mental_home_component.dart';

class MentalHealthMainScreen extends StatefulWidget {
  const MentalHealthMainScreen({Key? key}) : super(key: key);

  @override
  _MentalHealthMainScreenState createState() => _MentalHealthMainScreenState();
}

class _MentalHealthMainScreenState extends State<MentalHealthMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer(
          builder: (context, ref, _) {
            final index = ref.watch(mhBottomTabProvider);
            switch (index) {
              case 0:
                return const MentalHomeComponent();
              case 1:
                return const MentalChatComponent();
              case 2:
                return const MentalWellnessComponent();
              case 3:
                return Column(
                  children: [],
                );
              default:
                return Container();
            }
          },
        ),
      ),
    );
  }
}
