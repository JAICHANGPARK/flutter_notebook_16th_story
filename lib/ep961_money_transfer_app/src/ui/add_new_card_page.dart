import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInputController extends GetxController {
  TextEditingController _nameTextEditingController = TextEditingController();
}

class AddNewCardPage extends StatefulWidget {
  const AddNewCardPage({Key? key}) : super(key: key);

  @override
  _AddNewCardPage1State createState() => _AddNewCardPage1State();
}

class _AddNewCardPage1State extends State<AddNewCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  color: Colors.white,
                  icon: Icon(Icons.arrow_back_ios)),
              Text("NAME ON CARD"),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
