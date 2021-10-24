import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_16th_story/ep951_fitness_mobile_app/src/data/feature_workouts.dart';

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
                      Text("You've free trial class"),
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
                  padding: const EdgeInsets.fromLTRB(8,8,0,8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Featured Workouts",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),),
                      const SizedBox(height: 16,),
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: featureWorkoutItems.length,
                          itemBuilder: (context, index) {
                            var item = featureWorkoutItems[index];
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: SizedBox(
                                width: 160,
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
                                      ),
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
            const SizedBox(
              height: 84,
              child: Placeholder(),
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
