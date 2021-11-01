import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskEditPage extends StatefulWidget {
  const TaskEditPage({Key? key}) : super(key: key);

  @override
  _TaskEditPageState createState() => _TaskEditPageState();
}

class _TaskEditPageState extends State<TaskEditPage> {
  final List<Color> _colorItem = [
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

  final TextEditingController _dateTimeEditingController = TextEditingController();
  final TextEditingController _placeEditingController = TextEditingController();

  int _taskTypeIndex = 0;
  List<String> _taskTypeItem = ["Basic", "Urgent", "Important"];
  String _taskType = "Basic";

  @override
  void dispose() {
    // TODO: implement dispose
    _dateTimeEditingController.dispose();
    _placeEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                          firstDate: DateTime(1990, 1, 1),
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
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _taskTypeIndex = 0;
                          _taskType = _taskTypeItem[_taskTypeIndex];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _taskTypeIndex == 0 ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all()),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Center(
                          child: Text(
                            "Basic",
                            style: TextStyle(
                              color: _taskTypeIndex == 0 ? Colors.white : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _taskTypeIndex = 1;
                          _taskType = _taskTypeItem[_taskTypeIndex];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _taskTypeIndex == 1 ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(color: Colors.black)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Center(
                          child: Text(
                            "Urgent",
                            style: TextStyle(
                              color: _taskTypeIndex == 1 ? Colors.white : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _taskTypeIndex = 2;
                          _taskType = _taskTypeItem[_taskTypeIndex];
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: _taskTypeIndex == 2 ? Colors.black : Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(color: Colors.black)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Center(
                          child: Text(
                            "Important",
                            style: TextStyle(
                              color: _taskTypeIndex == 2 ? Colors.white : Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Divider(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  decoration: BoxDecoration(
                    color: const Color(0xff4beed1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.file_copy_outlined,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        const Text(
                          "Attach File",
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
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
