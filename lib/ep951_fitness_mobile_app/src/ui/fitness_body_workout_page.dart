import 'package:flutter/material.dart';

class FitnessBodyWorkoutPage extends StatefulWidget {
  const FitnessBodyWorkoutPage({Key? key}) : super(key: key);

  @override
  _FitnessBodyWorkoutPageState createState() => _FitnessBodyWorkoutPageState();
}

class _FitnessBodyWorkoutPageState extends State<FitnessBodyWorkoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text("Body Workout"),
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              Container(
                height: 64,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 24,),
              Container(
                height: 240,
                decoration: const BoxDecoration(color: Colors.black),
              ),
              const Expanded(child: const Placeholder())
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
