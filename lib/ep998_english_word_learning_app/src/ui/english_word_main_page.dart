import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class EwlMainPage extends StatefulWidget {
  const EwlMainPage({Key? key}) : super(key: key);

  @override
  _EwlMainPageState createState() => _EwlMainPageState();
}

class _EwlMainPageState extends State<EwlMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Statistic"),
        foregroundColor: Colors.black,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.file_upload_outlined),
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        items: [BottomNavigationBarItem(icon: Icon(Ionicons.documents_outline), label: "Learn"),
          BottomNavigationBarItem(icon: Icon(Ionicons.book_outline), label: "Dictionary")],
      ),
    );
  }
}
