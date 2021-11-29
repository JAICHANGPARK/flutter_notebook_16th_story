import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class InspirationPage extends StatefulWidget {
  const InspirationPage({Key? key}) : super(key: key);

  @override
  _InspirationPageState createState() => _InspirationPageState();
}

class _InspirationPageState extends State<InspirationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: CachedNetworkImage(
            imageUrl:
                "https://upload.wikimedia.org/wikipedia/commons/3/31/Virgil_Abloh_Paris_Fashion_Week_Autumn_Winter_2019_%28cropped%29.jpg",
          ))
        ],
      ),
    );
  }
}
