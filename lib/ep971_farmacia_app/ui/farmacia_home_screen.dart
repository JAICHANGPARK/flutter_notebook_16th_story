import 'package:flutter/material.dart';

class FarmaciaHomeScreen extends StatelessWidget {
  const FarmaciaHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, Dream!",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text("What are you looking for today?")
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.qr_code_scanner_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const TabBar(
              labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              unselectedLabelStyle: TextStyle(fontSize: 12),
              tabs: [
                Tab(
                  text: "PHARMACIES",
                ),
                Tab(
                  text: "PET SUPPLIES",
                ),
                Tab(
                  text: "ORTHOPEDICS",
                ),
              ]),
          Expanded(
              child: TabBarView(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 42,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          decoration:  BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)
                          ),
                          child: Center(
                            child: const Text("First aid kit",
                            style: const TextStyle(
                              color: Colors.white
                            ),),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Container(),
              Container(),
            ],
          ))
        ],
      ),
    );
  }
}
