import 'package:coolicons/coolicons.dart';
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
                      Text("You've free trial class",style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),),
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
                                              style: const TextStyle(color: Colors.grey,
                                              fontSize: 13),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          item.subtitle ?? "-",
                                          style: const TextStyle(color: Colors.grey,
                                          fontSize: 13),
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
              height: 72,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Workout Progress"),
                        Text("12 class ongoing"),
                      ],
                    ),
                    Spacer(),
                    CircularPercentIndicator(radius: 24),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Expanded(child: Placeholder()),
          ],
        ),
      ),
    );
  }
}
