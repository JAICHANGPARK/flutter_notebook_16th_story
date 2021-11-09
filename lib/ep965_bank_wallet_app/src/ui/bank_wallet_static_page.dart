import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_notebook_16th_story/ep965_bank_wallet_app/src/bloc/bottom_cubit.dart';

class BankWalletStaticPage extends StatefulWidget {
  const BankWalletStaticPage({Key? key}) : super(key: key);

  @override
  _BankWalletStaticPageState createState() => _BankWalletStaticPageState();
}

class _BankWalletStaticPageState extends State<BankWalletStaticPage> {
  int bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BankTabCubit, int>(
        builder: (context, index) {
          return IndexedStack(
            index: index,
            children: [
              Container(
                child: const Center(child: Text("page 1")),
              ),
              Container(
                child: const Center(child: Text("page 2")),
              ),
              SafeArea(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Statistic",
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: LineChart(LineChartData(
                              maxY: 1200,
                              minY: 0,
                              borderData: FlBorderData(
                                show: false,
                              ),
                              gridData: FlGridData(
                                show: false,
                              ),
                              axisTitleData: FlAxisTitleData(show: false),
                              titlesData: FlTitlesData(
                                topTitles: SideTitles(
                                  showTitles: false,
                                ),
                                rightTitles: SideTitles(
                                  showTitles: false,
                                ),
                                leftTitles: SideTitles(
                                  showTitles: true,
                                  interval: 250,
                                  getTextStyles: (context, value) {
                                    return const TextStyle(fontSize: 10, color: Colors.grey);
                                  },
                                ),
                                bottomTitles: SideTitles(
                                  showTitles: true,
                                  interval: 5,
                                  getTextStyles: (context, value) {
                                    return const TextStyle(fontSize: 10, color: Colors.grey);
                                  },
                                ),
                              ),
                              lineBarsData: [
                                LineChartBarData(
                                    colors: [Colors.purple],
                                    dotData: FlDotData(show: false),
                                    isCurved: true,
                                    spots: List.generate(
                                      40,
                                      (index) => FlSpot(
                                        index.toDouble(),
                                        250 + (Random().nextDouble() * 500),
                                      ),
                                    )),
                                LineChartBarData(
                                    colors: [Colors.red],
                                    dotData: FlDotData(show: false),
                                    isCurved: true,
                                    spots: List.generate(
                                      40,
                                      (index) => FlSpot(
                                        index.toDouble(),
                                        500 + (Random().nextDouble() * 500),
                                      ),
                                    )),
                              ])),
                        ),
                      ),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.arrow_drop_up,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text("Receive Money"),
                        SizedBox(
                          width: 16,
                        ),
                        Icon(
                          Icons.arrow_drop_down,
                          color: Colors.red,
                        ),
                        Text("Send Money")
                      ],
                    ),
                    Container(
                      height: 58,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 110,
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              decoration:
                                  BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "October 21",
                                      style: TextStyle(color: Colors.white,
                                      fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 16,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 110,
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              decoration:
                              BoxDecoration(color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(4)),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      "All",
                                      style: TextStyle(color: Colors.white,
                                          fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_down,
                                      color: Colors.white,
                                      size: 16,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 110,
                              decoration:
                                  BoxDecoration(color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(4)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200.0,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                          childAspectRatio: 1.4,
                        ),
                        itemBuilder: (_, index) {
                          return Container(
                            color: Colors.blue,
                          );
                        },
                        itemCount: 10,
                      ),
                    )),
                  ],
                ),
              ),
              Container(
                child: const Center(child: Text("page 4")),
              ),
              Container(
                child: const Center(child: Text("page 5")),
              )
            ],
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: BlocBuilder<BankTabCubit, int>(
          builder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    color: index == 0 ? Colors.deepPurpleAccent : Colors.black,
                    onPressed: () {
                      context.read<BankTabCubit>().setTab(0);
                    },
                    icon: const Icon(Icons.home)),
                IconButton(
                    color: index == 1 ? Colors.deepPurpleAccent : Colors.black,
                    onPressed: () {
                      context.read<BankTabCubit>().setTab(1);
                    },
                    icon: const Icon(Icons.account_balance_wallet)),
                IconButton(
                    color: index == 2 ? Colors.deepPurpleAccent : Colors.black,
                    onPressed: () {
                      context.read<BankTabCubit>().setTab(2);
                    },
                    icon: const Icon(Icons.pie_chart)),
                IconButton(
                    color: index == 3 ? Colors.deepPurpleAccent : Colors.black,
                    onPressed: () {
                      context.read<BankTabCubit>().setTab(3);
                    },
                    icon: const Icon(Icons.description)),
                IconButton(
                    color: index == 4 ? Colors.deepPurpleAccent : Colors.black,
                    onPressed: () {
                      context.read<BankTabCubit>().setTab(4);
                    },
                    icon: const Icon(Icons.settings)),
              ],
            );
          },
        ),
      ),
    );
  }
}
