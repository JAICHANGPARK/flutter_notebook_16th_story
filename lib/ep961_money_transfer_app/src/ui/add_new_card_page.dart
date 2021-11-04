import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInputController extends GetxController {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController cardNumberTextEditingController = TextEditingController();

  clear() {
    nameTextEditingController.clear();
    cardNumberTextEditingController.clear();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextEditingController.dispose();
    cardNumberTextEditingController.dispose();
  }
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
                  icon: const Icon(Icons.arrow_back_ios)),
              const Text(
                "Add New Card",
                style: const TextStyle(color: Colors.white, fontSize: 32),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "NAME ON CARD",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.nameTextEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5))),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "CARD NUMBER",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder(
                init: CardInputController(),
                builder: (CardInputController controller) {
                  return TextField(
                    controller: controller.cardNumberTextEditingController,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5)),
                        border: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 0.5))),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
