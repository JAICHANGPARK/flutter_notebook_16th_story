import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../riverpod/bottom_tab_provider.dart';


class MentalChatComponent extends StatelessWidget {
  const MentalChatComponent({Key? key}) : super(key: key);

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
              const Text("Cope with Pain"),
              const Icon(Icons.more_horiz)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: Colors.blue,
              border: Border.all(color: Colors.black, width: 1.5)
            ),
            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Consumer(
              builder: (context, ref, _){
                final topTab = ref.watch(mhChatTabProvider);
                return Row(
                  children: [
                    Expanded(child: Placeholder()),
                    Expanded(child: Placeholder()),


                  ],
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
