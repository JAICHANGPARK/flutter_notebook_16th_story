import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class EwlMainPage extends StatefulWidget {
  const EwlMainPage({Key? key}) : super(key: key);

  @override
  _EwlMainPageState createState() => _EwlMainPageState();
}

class _EwlMainPageState extends State<EwlMainPage> {
  int _bottomIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Statistic"),
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.file_upload_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.all(8),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      children: [
                        CircularPercentIndicator(
                          radius: 42,
                          percent: .7,
                          progressColor: Colors.indigoAccent,
                          circularStrokeCap: CircularStrokeCap.round,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "New words",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Text(
                                "Today: 3/5",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                    const VerticalDivider(),
                    Expanded(
                        child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Current streak",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                              Text(
                                "12 days",
                                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 340,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    height: 32,
                    decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      children: const [
                        Expanded(
                            child: Card(
                          child: Center(
                            child: Text("Week"),
                          ),
                        )),
                        VerticalDivider(
                          indent: 2,
                          endIndent: 2,
                        ),
                        Expanded(
                            child: Center(
                          child: Text("Month"),
                        )),
                        VerticalDivider(
                          indent: 2,
                          endIndent: 2,
                        ),
                        Expanded(
                            child: Center(
                          child: Text("Quater"),
                        )),
                        VerticalDivider(
                          indent: 4,
                          endIndent: 4,
                        ),
                        Expanded(
                            child: Center(
                          child: Text("Year"),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: BarChart(
                      BarChartData(
                        maxY: 42,
                        minY: 0,
                        titlesData: FlTitlesData(
                          rightTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: false,
                            ),
                          ),
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: false,
                            ),
                          ),
                          leftTitles: AxisTitles(
                            sideTitles: SideTitles(
                                reservedSize: 10,
                                showTitles: true,
                                interval: 10,
                                getTitlesWidget: (value, _) {
                                  return Text(value.toInt().toString());
                                }),
                          ),
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: 10,
                                // getTextStyles: (context, value) {
                                //   return const TextStyle(
                                //     fontSize: 10,
                                //     color: Colors.grey,
                                //   );
                                // },
                                getTitlesWidget: (value, _) {
                                  int v = value.toInt();
                                  switch (v) {
                                    case 0:
                                      return const Text("22 Jun");
                                    case 1:
                                      return const Text("23 Jun");
                                    case 2:
                                      return const Text("24 Jun");
                                    case 3:
                                      return const Text("25 Jun");
                                    case 4:
                                      return const Text("26 Jun");
                                    case 5:
                                      return const Text("27 Jun");
                                    case 6:
                                      return const Text("28 Jun");
                                    default:
                                      return const Text("");
                                  }
                                }),
                          ),
                        ),
                        gridData: FlGridData(
                          drawVerticalLine: false,
                        ),
                        // axisTitleData: FlAxisTitleData(
                        //     rightTitle: AxisTitle(
                        //   showTitle: false,
                        // )),
                        borderData: FlBorderData(show: false),
                        // barGroups: [
                        //   BarChartGroupData(x: 0, barRods: [
                        //     BarChartRodData(y: 17, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 2, Colors.grey),
                        //       BarChartRodStackItem(2, 14, Colors.green),
                        //       BarChartRodStackItem(14, 17, Colors.indigoAccent)
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 1, barRods: [
                        //     BarChartRodData(y: 32, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 7, Colors.grey),
                        //       BarChartRodStackItem(7, 22, Colors.green),
                        //       BarChartRodStackItem(22, 27, Colors.indigoAccent),
                        //       BarChartRodStackItem(27, 32, Colors.black)
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 2, barRods: [
                        //     BarChartRodData(y: 22, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 3, Colors.grey),
                        //       BarChartRodStackItem(3, 15, Colors.green),
                        //       BarChartRodStackItem(15, 20, Colors.indigoAccent),
                        //       BarChartRodStackItem(20, 22, Colors.black)
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 3, barRods: [
                        //     BarChartRodData(y: 22, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 15, Colors.green),
                        //       BarChartRodStackItem(15, 22, Colors.indigoAccent),
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 4, barRods: [
                        //     BarChartRodData(y: 30, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 8, Colors.grey),
                        //       BarChartRodStackItem(8, 25, Colors.green),
                        //       BarChartRodStackItem(25, 30, Colors.indigoAccent),
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 5, barRods: [
                        //     BarChartRodData(y: 32, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 12, Colors.grey),
                        //       BarChartRodStackItem(12, 27, Colors.green),
                        //       BarChartRodStackItem(27, 32, Colors.indigoAccent),
                        //     ]),
                        //   ]),
                        //   BarChartGroupData(x: 6, barRods: [
                        //     BarChartRodData(y: 19, width: 16, borderRadius: BorderRadius.circular(2), rodStackItems: [
                        //       BarChartRodStackItem(0, 3, Colors.grey),
                        //       BarChartRodStackItem(3, 13, Colors.green),
                        //       BarChartRodStackItem(13, 18, Colors.indigoAccent),
                        //       BarChartRodStackItem(18, 19, Colors.black)
                        //     ]),
                        //   ]),
                        // ],
                      ),
                    ),
                  )),
                  Row(
                    children: const [
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.black,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Learned: 8",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.indigoAccent,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "New: 35",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.greenAccent,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Learning: 85",
                        style: TextStyle(fontSize: 12),
                      ),
                      Spacer(),
                      CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.grey,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        "Skipped: 35",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 140,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(8),
              child: ListView(
                children: [
                  Row(
                    children: const [
                      Icon(
                        Ionicons.bookmarks_outline,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Learning"),
                      Spacer(),
                      Text(
                        "542 words",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Icon(
                        Ionicons.star_outline,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Complete learned"),
                      Spacer(),
                      Text(
                        "185 words",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Icon(
                        Ionicons.bonfire_outline,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Best streak"),
                      Spacer(),
                      Text(
                        "16 days",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Divider(),
                  Row(
                    children: const [
                      Icon(
                        Ionicons.time_outline,
                        color: Colors.grey,
                        size: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text("Start of learning"),
                      Spacer(),
                      Text(
                        "May, 2021",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  const Divider(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (idx) {
          setState(() {
            _bottomIndex = idx;
          });
        },
        currentIndex: _bottomIndex,
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.indigoAccent,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Ionicons.documents_outline), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Ionicons.book_outline), label: "Dictionary"),
          BottomNavigationBarItem(icon: Icon(Ionicons.stats_chart), label: "Statistic"),
          BottomNavigationBarItem(icon: Icon(Ionicons.settings_outline), label: "Settings"),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
