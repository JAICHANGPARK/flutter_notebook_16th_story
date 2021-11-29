import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

List<String> quotes = [
  "Wow. I would definitely say it's gonna die you know?",
  "Fashion and music are two great artistic forms that can be molded by the youth culture - our taste and our passion for evolving things in our limited time on earth allows us to look at things with fresh eyes.",
  "I'd do anything at the right time, and I would also do things at the wrong time if they felt right.",
  "Everything I do references something that influenced me.",
  "I'm not really into style. I'm more into confidence or having something to say.",
  "I do fashion to tell a narrative.",
  "Whenever I'm doing a collection, I'm inspired by the world around us."
];

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
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.55),
                colorBlendMode: BlendMode.darken,
                imageUrl:
                    "https://upload.wikimedia.org/wikipedia/commons/3/31/Virgil_Abloh_Paris_Fashion_Week_Autumn_Winter_2019_%28cropped%29.jpg",
              )),
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Text(
                //   "\"STREETWEAR IN THE 2020S?\"",
                //   style: TextStyle(
                //     color: Colors.white,
                //   ),
                // ),
                // const SizedBox(
                //   height: 24,
                // ),
                Center(
                    child: DefaultTextStyle(
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 24, color: Colors.white, height: 1.6),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: quotes
                        .map((e) => FadeAnimatedText(
                              e.toUpperCase(),
                              duration: const Duration(seconds: 5),
                              textAlign: TextAlign.center,
                            ))
                        .toList(),
                  ),
                )),
              ],
            ),
            left: 24,
            right: 24,
            bottom: 0,
            top: 0,
          ),
          Positioned(
            child: Column(
              children: const [
                Center(
                    child: Text(
                  "Virgil Abloh",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "September 30, 1980 - 	November 28, 2021",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
            bottom: 24,
            left: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
