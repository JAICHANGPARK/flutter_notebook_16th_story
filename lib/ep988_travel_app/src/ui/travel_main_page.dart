import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class TravelMainPage extends StatefulWidget {
  const TravelMainPage({Key? key}) : super(key: key);

  @override
  _TravelMainPageState createState() => _TravelMainPageState();
}

class _TravelMainPageState extends State<TravelMainPage> {
  TextEditingController _textEditingController = TextEditingController();
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const Drawer(),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 42,
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search for place",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                      ),
                    )),
                    const SizedBox(
                      width: 16,
                    ),
                    Badge(
                      child: GestureDetector(
                          onTap: () {
                            _globalKey.currentState?.openDrawer();
                          },
                          child: const Icon(Ionicons.menu)),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ondue",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Expanded(
                          child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              width: 240,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 4,
                                    top: 4,
                                    bottom: 4,
                                    right: 8,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Colors.blueGrey,
                                        image: const DecorationImage(
                                          image: CachedNetworkImageProvider(
                                            "https://cdn.pixabay.com/photo/2020/12/17/00/43/skyscrapers-5838029__340.jpg",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                              left: 12,
                                              right: 12,
                                              bottom: 12,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    "Singahura",
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                                    child: Row(
                                                      children: const [
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                          size: 14,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                          size: 14,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                          size: 14,
                                                        ),
                                                        Icon(
                                                          Icons.star,
                                                          color: Colors.orange,
                                                          size: 14,
                                                        ),
                                                        Icon(
                                                          Icons.star_border,
                                                          color: Colors.orange,
                                                          size: 14,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.flight_takeoff,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "Ha Noi - May 20, 2019",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    height: 8,
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.loyalty,
                                                        color: Colors.white,
                                                        size: 16,
                                                      ),
                                                      SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text(
                                                        "02/12 Seats",
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )),
                                          Positioned(
                                            right: 8,
                                            bottom: 8,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  "\$920",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      decoration: TextDecoration.lineThrough),
                                                ),
                                                Text(
                                                  "\$770",
                                                  style: TextStyle(color: Colors.red[400], fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 24,
                                    left: 0,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.black87,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(4),
                                          bottomRight: Radius.circular(4),
                                        ),
                                      ),
                                      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                                      child: const Text(
                                        "06 days 16 hours",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 64,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                      decoration: BoxDecoration(
                                        color: Colors.red[500],
                                        borderRadius: const BorderRadius.only(
                                          topRight: Radius.circular(4),
                                          bottomRight: Radius.circular(4),
                                        ),
                                      ),
                                      child: const Text(
                                        "-20%",
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      )),
                      Padding(
                        padding: const EdgeInsets.only(right: 16, top: 4),
                        child: Row(
                          children: const [
                            Spacer(),
                            Text(
                              "VIEW ALL -",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 48,
                        // decoration: const BoxDecoration(
                        // ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Favorite",
                                  style: TextStyle(fontSize: 24),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  height: 2,
                                  width: 32,
                                  color: Colors.black,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(child: ListView.builder(
                        itemBuilder: (context, index) {
                          return const SizedBox(
                            height: 160,
                            child: Card(),
                          );
                        },
                      ))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
