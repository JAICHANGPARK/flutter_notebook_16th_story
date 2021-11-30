import 'package:badges/badges.dart';
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
            const Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Placeholder(),
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
