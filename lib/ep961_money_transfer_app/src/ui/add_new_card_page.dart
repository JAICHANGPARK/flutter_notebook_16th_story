import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardInputController extends GetxController {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController cardNumberTextEditingController = TextEditingController();

  TextEditingController dayTextEditingController = TextEditingController();
  TextEditingController monthTextEditingController = TextEditingController();
  TextEditingController yearTextEditingController = TextEditingController();

  clear() {
    nameTextEditingController.clear();
    cardNumberTextEditingController.clear();
    dayTextEditingController.clear();
    monthTextEditingController.clear();
    yearTextEditingController.clear();
  }

  debugInput() {
    debugPrint("${nameTextEditingController.text}, ${cardNumberTextEditingController.text}, "
        "${dayTextEditingController.text}, ${monthTextEditingController.text}, "
        "${yearTextEditingController.text}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextEditingController.dispose();
    cardNumberTextEditingController.dispose();
    dayTextEditingController.dispose();
    monthTextEditingController.dispose();
    yearTextEditingController.dispose();
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
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(
                  Icons.keyboard_arrow_left_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Add New Card",
                style: TextStyle(color: Colors.white, fontSize: 32),
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
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        )),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          ),
                        )),
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
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                        width: 0.5,
                      )),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "EXPIRE DAY (DD/MM/YYYY)",
                style: TextStyle(color: Colors.grey),
              ),
              GetBuilder<CardInputController>(
                builder: (controller) {
                  return Row(
                    children: const [
                      Expanded(
                          child: TextField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                          child: TextField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.grey,
                            width: 0.5,
                          )),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 0.5,
                            ),
                          ),
                        ),
                      )),
                    ],
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  final c = Get.find<CardInputController>();
                  c.debugInput();
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.red[50],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Add Card",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
