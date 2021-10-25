import 'package:coolicons/coolicons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep951_fitness_mobile_app/src/data/feature_workouts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class FitnessMainPage extends StatefulWidget {
  const FitnessMainPage({Key? key}) : super(key: key);

  @override
  _FitnessMainPageState createState() => _FitnessMainPageState();
}

class _FitnessMainPageState extends State<FitnessMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hi Malik",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "You've free trial class",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Clicked Menu button",
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Coolicons.menu_alt_02)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: SizedBox(
                height: 280,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Featured Workouts",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: featureWorkoutItems.length,
                          itemBuilder: (context, index) {
                            var item = featureWorkoutItems[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: SizedBox(
                                width: 150,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 180,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(item.thumbImg ?? ""),
                                            fit: BoxFit.cover,
                                          ),
                                          borderRadius: BorderRadius.circular(12)),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              item.title ?? "-",
                                              style: const TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            const Spacer(),
                                            Text(
                                              item.time ?? "-",
                                              style: const TextStyle(color: Colors.grey, fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          item.subtitle ?? "-",
                                          style: const TextStyle(color: Colors.grey, fontSize: 13),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Workout Progress",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "12 class ongoing",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: CircularPercentIndicator(
                        radius: 44,
                        progressColor: Colors.black,
                        percent: 0.75,
                        center: const Text(
                          "75%",
                          style: TextStyle(fontSize: 11),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    left: 0,
                    top: 0,
                    bottom: 0,
                    right: 120,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.lightGreenAccent,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(32)),
                      ),
                      padding: const EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Body Workout",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Text(
                            "20,000 Kcal this week",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Expanded(
                              child: SizedBox(
                            width: double.infinity,
                            child: BarChart(
                              BarChartData(
                                alignment: BarChartAlignment.spaceAround,
                                gridData: FlGridData(show: false),
                                titlesData: FlTitlesData(
                                    bottomTitles: SideTitles(
                                      showTitles: true,
                                    ),
                                    leftTitles: SideTitles(showTitles: false),
                                    rightTitles: SideTitles(showTitles: false),
                                    topTitles: SideTitles(showTitles: false)),
                                borderData: FlBorderData(show: false),
                                axisTitleData: FlAxisTitleData(show: false),
                                barGroups: [
                                  BarChartGroupData(x: 0, barRods: [
                                    BarChartRodData(y: 16, width: 2.5, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 1, barRods: [
                                    BarChartRodData(y: 10, width: 3, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 2, barRods: [
                                    BarChartRodData(y: 11, width: 3, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 3, barRods: [
                                    BarChartRodData(y: 10, width: 3, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 4, barRods: [
                                    BarChartRodData(y: 16, width: 3, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 5, barRods: [
                                    BarChartRodData(y: 8, width: 3, colors: [Colors.black])
                                  ]),
                                  BarChartGroupData(x: 6, barRods: [
                                    BarChartRodData(y: 16, width: 3, colors: [Colors.black])
                                  ]),
                                ],
                              ),
                            ),
                          ))
                        ],
                      ),
                    )),
                Positioned(
                    top: 64,
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 120,
                      color: Colors.black,
                      padding: const EdgeInsets.only(left: 24, top: 24, bottom: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "More"
                            "\n"
                            "Workout"
                            "\n"
                            "Progress",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.arrow_circle_down,
                                color: Colors.white,
                              ))
                        ],
                      ),
                    )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
