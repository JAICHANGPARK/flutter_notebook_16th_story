import 'package:flutter/material.dart';

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
        children: [],
      ),
    );
  }
}
