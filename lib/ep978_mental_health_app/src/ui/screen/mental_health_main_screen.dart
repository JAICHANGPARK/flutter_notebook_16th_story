import 'package:coolicons/coolicons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MentalHealthMainScreen extends StatefulWidget {
  const MentalHealthMainScreen({Key? key}) : super(key: key);

  @override
  _MentalHealthMainScreenState createState() => _MentalHealthMainScreenState();
}

class _MentalHealthMainScreenState extends State<MentalHealthMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text(
                    "My Spaces",
                    style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.black, width: 1.5)),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    child: Text(
                      "SOS",
                      style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Coolicons.settings_future),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello Dreamwalker",
                          style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Let's explore all the features here",
                          style: GoogleFonts.balsamiqSans(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Use Voice in Menta",
                    style: GoogleFonts.balsamiqSans(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.cyan[100],
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 1.5)),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "New Features",
                              style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Talk through your anxiety",
                              style: GoogleFonts.balsamiqSans(fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: 48,
                          width: 48,
                          decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: const EdgeInsets.all(4),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black)),
                            child: const Center(
                              child: Icon(Icons.mic),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Text("Self Care"),
                  const Spacer(),
                  Column(
                    children: [
                      const Text("See All"),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 2,
                        width: 42,
                        decoration: const BoxDecoration(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Column(
                        children: [
                          Container(
                            height: 54,
                            width: 54,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.black,
                                )),
                            padding: EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text("Talk")
                        ],
                      ),
                    );
                  },
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
