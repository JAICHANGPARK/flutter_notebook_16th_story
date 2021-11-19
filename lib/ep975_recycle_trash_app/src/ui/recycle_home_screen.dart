import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep975_recycle_trash_app/src/controller/rp_visivility_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RecycleHomeScreen extends StatelessWidget {
  const RecycleHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 24, 12, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Hi Dreamwalker"),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const Spacer(),
              CircleAvatar(
                backgroundColor: Colors.teal[100],
                foregroundColor: Colors.teal,
                child: const Icon(Icons.notifications_outlined),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: Row(
            children: const [
              Icon(
                Icons.location_on,
                color: Colors.teal,
                size: 14,
              ),
              Text("Seoul, Republic of Korea")
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 320,
            decoration: BoxDecoration(
              color: Colors.teal[300],
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Rapel Cash",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "RP 129,875",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Consumer(
                      builder: (BuildContext context, WidgetRef ref, Widget? child) {
                        final v = ref.watch(rpVisibilityProvider);
                        if (v) {
                          return IconButton(
                              onPressed: () {
                                ref.read(rpVisibilityProvider.notifier).state = !v;
                              },
                              icon: const Icon(Icons.visibility));
                        }
                        return IconButton(
                            onPressed: () {
                              ref.read(rpVisibilityProvider.notifier).state = !v;
                            },
                            icon: const Icon(Icons.visibility_off));
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "lsi Ulang",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "lsi Ulang",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "lsi Ulang",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "12",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Transaksi")
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "24",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Pendapatan")
                        ],
                      ),
                      const VerticalDivider(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "4",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Menunggu")
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Setoran Terakhir",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                "Lihat semua",
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ),
        Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
          return Container();

        })),
      ],
    );
  }
}
