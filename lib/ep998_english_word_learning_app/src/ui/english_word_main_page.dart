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
                     Expanded(child:  Row(
                      children: [
                        CircleAvatar(
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
              height: 300,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)
                    ),
                    padding: EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      children: const [
                        Expanded(child: Card(
                          child: Center(
                            child: Text("Week"),
                          ),
                        )),
                        VerticalDivider(
                          indent: 2,
                          endIndent: 2,
                        ),
                        Expanded(child: Center(
                          child: Text("Month"),
                        )),
                        VerticalDivider(
                          indent: 2,
                          endIndent: 2,
                        ),
                        Expanded(child: Center(
                          child: Text("Quater"),
                        )),
                        VerticalDivider(
                          indent: 4,
                          endIndent: 4,
                        ),
                        Expanded(child: Center(
                          child: Text("Year"),
                        )),
                      ],
                    ),
                  ),

                  Expanded(child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Placeholder(),
                  )),
                  Row(
                    children: const [
                      CircleAvatar(radius: 4,
                      backgroundColor: Colors.black,),
                      SizedBox(width: 4,),
                      Text("Learned: 8",style: TextStyle(
                        fontSize: 12
                      ),),
                      Spacer(),
                      CircleAvatar(radius: 4,
                      backgroundColor: Colors.indigoAccent,),
                      SizedBox(width: 4,),
                      Text("New: 35",style: TextStyle(
                          fontSize: 12
                      ),),
                      Spacer(),
                      CircleAvatar(radius: 4,
                      backgroundColor: Colors.greenAccent,),
                      SizedBox(width: 4,),
                      Text("Learning: 85",style: TextStyle(
                          fontSize: 12
                      ),),
                      Spacer(),
                      CircleAvatar(radius: 4,
                      backgroundColor: Colors.grey,),
                      SizedBox(width: 4,),
                      Text("Skipped: 35",style: TextStyle(
                          fontSize: 12
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Container(
              height: 180,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(8),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Icon(Ionicons.bookmarks_outline, color: Colors.grey,
                      size: 18,),
                      SizedBox(width: 8,),
                      Text("Learning"),
                      Spacer(),
                      Text("542 words")
                    ],
                  ),
                  Divider(),
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
