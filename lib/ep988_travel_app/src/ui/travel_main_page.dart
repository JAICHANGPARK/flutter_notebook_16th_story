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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      child: const Icon(Ionicons.menu),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Ondue",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
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
                                ),
                              ),
                              Positioned(
                                  top: 24,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black87,
                                    ),
                                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                                    child: Text(
                                      "06 days 16 hours",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  )),
                  Row(
                    children: const [
                      Text(
                        "VIEW ALL -",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  )
                ],
              ),
            )),
            const SizedBox(
              height: 16,
            ),
            const Expanded(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Placeholder(),
            )),
          ],
        ),
      ),
    );
  }
}
