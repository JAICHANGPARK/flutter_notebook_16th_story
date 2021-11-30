import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

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
                      child: TextField(
                      
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                      ),
                    )),
                    Badge()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
