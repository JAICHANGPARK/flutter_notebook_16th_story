import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MoneyTransferMainPage extends StatefulWidget {
  const MoneyTransferMainPage({Key? key}) : super(key: key);

  @override
  _MoneyTransferMainPageState createState() => _MoneyTransferMainPageState();
}

class _MoneyTransferMainPageState extends State<MoneyTransferMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.white,
                      size: 24,
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Add New",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              Icons.add_circle_outline,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          height: 0.8,
                          width: 74,
                          color: Colors.white,
                        )
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "My Cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Dreamwalker",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            LineIcons.visaCreditCard,
                            size: 24,
                          )
                        ],
                      ),
                      const Spacer(),
                      const Text(
                        "4566  ****  ****  5237",
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        "\$2,425.00",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    height: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(right: 8, left: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.location_searching,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "Location",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "Transfer",
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.white),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.person_outline,
                                      color: Colors.white,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  "My",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "Contacts",
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    height: 24,
                                    width: 24,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.white),
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.white),
                                      ),
                                    )),
                                const Spacer(),
                                const Text(
                                  "Saved",
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  "Transfers",
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                const Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "You received a payment",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Dreamwalker",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Text("\$220.00", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),)
                        ],
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Yesterday",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
