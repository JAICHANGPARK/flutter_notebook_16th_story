import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskEditPage extends StatefulWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  List<Color> _colorItem = [
    const Color(0xff4beed1),
    const Color(0xfffbe114),
    const Color(0xff3ed1f0),
    const Color(0xffb6adff),
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.pink,
    Colors.brown
  ];

  TextEditingController _dateTimeEditingController = TextEditingController();
  TextEditingController _placeEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Task"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Color Task",
                  style: TextStyle(color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    children: [
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: _colorItem
                            .map((e) => CircleAvatar(
                                  radius: 10,
                                  backgroundColor: e,
                                ))
                            .toList(),
                      )),
                      const SizedBox(
                        width: 16,
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey[200]!,
                        foregroundColor: Colors.black,
                        radius: 10,
                        child: const Icon(
                          Icons.add,
                          size: 12,
                        ),
                      )
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Color Task",
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  controller: _dateTimeEditingController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.calendar_today_outlined),
                      onPressed: () async {
                        DateTime? datetime = await showDatePicker(
                          context: context,
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now(),
                          initialDate: DateTime.now(),
                        );
                        debugPrint(datetime.toString());
                        _dateTimeEditingController.text = datetime.toString();
                        await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Place",
                  style: TextStyle(color: Colors.grey),
                ),
                TextField(
                  controller: _placeEditingController,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.location_on_outlined),
                      onPressed: () async {},
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  "Task Type",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black, borderRadius: BorderRadius.circular(32), border: Border.all()),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: const Center(
                        child: Text(
                          "Basic",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: Colors.black)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: const Center(
                        child: Text(
                          "Urgent",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: Colors.black)),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      child: const Center(
                        child: Text(
                          "Important",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Center(
                child: Text(
                  "Save Task",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
