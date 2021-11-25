import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ionicons/ionicons.dart';

import '../../data/fake_wellness.dart';
import '../../riverpod/bottom_tab_provider.dart';

class MentalWellnessComponent extends StatelessWidget {
  const MentalWellnessComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                      ref
                          .read(mhBottomTabProvider.notifier)
                          .state = 0;
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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "The essential wellness part works to develop helpful beliefs about your life",
                  style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
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
                const Text("10 Video Content"),
                const SizedBox(height: 16),
                Expanded(
                    child: ListView.builder(
                        itemCount: fakeWellness.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16),
                            child: Container(
                              height: 110,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 1.5),
                                  borderRadius: BorderRadius.circular(24)),
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                              child: Row(
                                children: [
                                  Container(
                                    height: 100,
                                    width: 120,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              fakeWellness[index].img ?? "",
                                            ),
                                            fit: BoxFit.cover)),
                                    child: Center(
                                      child: CircleAvatar(
                                        backgroundColor: (fakeWellness[index].isLock ?? false)
                                            ? Colors.red
                                            : Colors.blue,
                                        foregroundColor: Colors.white,
                                        child: Icon((fakeWellness[index].isLock ?? false)
                                            ? Icons.visibility
                                            : Icons.lock),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          fakeWellness[index].title ?? "",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          fakeWellness[index].subtitle ?? "",
                                          style: const TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          fakeWellness[index].time ?? "",
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
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
  }
}
