import 'package:coolicons/coolicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep978_mental_health_app/src/riverpod/bottom_tab_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

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
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Text(
                            "My Spaces",
                            style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold, color: Colors.grey),
                          ),
                          const Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(color: Colors.black, width: 1.5)),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                            child: Text(
                              "SOS",
                              style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Coolicons.settings_future),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.black, width: 1.5),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Hello Dreamwalker",
                                  style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Let's explore all the features here",
                                  style: GoogleFonts.balsamiqSans(color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Use Voice in Menta",
                            style: GoogleFonts.balsamiqSans(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Container(
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.cyan[100],
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: Colors.black, width: 1.5)),
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "New Features",
                                      style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Talk through your anxiety",
                                      style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                                  padding: const EdgeInsets.all(4),
                                  child: Container(
                                    decoration:
                                        BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black)),
                                    child: const Center(
                                      child: Icon(Icons.mic),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          const Text("Self Care"),
                          const Spacer(),
                          Column(
                            children: [
                              const Text("See All"),
                              const SizedBox(
                                height: 4,
                              ),
                              Container(
                                height: 2,
                                width: 42,
                                decoration: const BoxDecoration(color: Colors.blue),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: SizedBox(
                        height: 100,
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Column(
                                children: [
                                  Container(
                                    height: 54,
                                    width: 54,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Colors.black,
                                        )),
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    "Talk",
                                    style: GoogleFonts.balsamiqSans(
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            );
                          },
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        "My 4 Am Friends",
                        style: GoogleFonts.balsamiqSans(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        height: 110,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Container(
                              height: 84,
                              width: 84,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2020/11/23/18/18/birds-5770589_960_720.jpg",
                                ),
                                fit: BoxFit.fitHeight,
                              )),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "How are you feeling?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      border: Border.all(color: Colors.black, width: 1.5),
                                      borderRadius: BorderRadius.circular(24)),
                                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                  child: const Center(
                                    child: Text(
                                      "Talk Now",
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Consumer(
                        builder: (context, ref, _) {
                          final index = ref.watch(mhBottomTabProvider);
                          return Container(
                            height: 64,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(36),
                                border: Border.all(color: Colors.black, width: 1.5)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                index == 0
                                    ? GestureDetector(
                                        onTap: () {
                                          ref.read(mhBottomTabProvider.notifier).state = 0;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              borderRadius: BorderRadius.circular(16),
                                              border: Border.all(color: Colors.black, width: 1.5)),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: const Icon(Ionicons.home),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () => ref.read(mhBottomTabProvider.notifier).state = 0,
                                        icon: const Icon(Ionicons.home),
                                        color: Colors.white,
                                      ),
                                index == 1
                                    ? GestureDetector(
                                        onTap: () {
                                          ref.read(mhBottomTabProvider.notifier).state = 0;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              borderRadius: BorderRadius.circular(16),
                                              border: Border.all(color: Colors.black, width: 1.5)),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: const Icon(Ionicons.chatbubble_outline),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () => ref.read(mhBottomTabProvider.notifier).state = 1,
                                        icon: const Icon(Ionicons.chatbubble_outline),
                                        color: Colors.white,
                                      ),
                                index == 2
                                    ? GestureDetector(
                                        onTap: () {
                                          ref.read(mhBottomTabProvider.notifier).state = 0;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              borderRadius: BorderRadius.circular(16),
                                              border: Border.all(color: Colors.black, width: 1.5)),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: const Icon(Ionicons.apps_outline),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () => ref.read(mhBottomTabProvider.notifier).state = 2,
                                        icon: const Icon(Ionicons.apps_outline),
                                        color: Colors.white,
                                      ),
                                index == 3
                                    ? GestureDetector(
                                        onTap: () {
                                          ref.read(mhBottomTabProvider.notifier).state = 0;
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Colors.yellow,
                                              borderRadius: BorderRadius.circular(16),
                                              border: Border.all(color: Colors.black, width: 1.5)),
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                                          child: const Icon(Ionicons.document_text_outline),
                                        ),
                                      )
                                    : IconButton(
                                        onPressed: () => ref.read(mhBottomTabProvider.notifier).state = 3,
                                        icon: const Icon(Ionicons.document_text_outline),
                                        color: Colors.white,
                                      )
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                );
              case 1:
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Consumer(
                            builder: (context, ref, _) {
                              return GestureDetector(
                                onTap: () {
                                  ref.read(mhBottomTabProvider.notifier).state = 0;
                                },
                                child: Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.5,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            },
                          ),
                          const Text("Wellness"),
                          const Icon(Icons.more_horiz)
                        ],
                      ),
                    ),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "5 Exercises",
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              "The essential wellness part works to develop helpful beliefs about your life",
                              style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.black, width: 1.5),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Unlock All",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(Ionicons.thumbs_up_outline),
                                const SizedBox(
                                  width: 16,
                                ),
                                const Icon(Ionicons.share_social)
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 24),
                              child: Divider(color: Colors.black),
                            ),

                            Text("10 Video Content"),
                            SizedBox(height: 16,),
                            Expanded(child: ListView.builder(
                              
                                itemBuilder: (context, index){
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Container(
                                  height: 110,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 1.5),
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                ),
                              );
                            }))
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              case 2:
                return Column(
                  children: [],
                );
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
