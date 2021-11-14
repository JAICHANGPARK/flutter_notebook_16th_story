import 'package:get/get.dart';

class FarmaciaHomeCategoriesController extends GetxController {
  int index = 0;

  setIndex(int idx) {
    index = idx;
    update();
  }
}
