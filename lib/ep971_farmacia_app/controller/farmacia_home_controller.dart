import 'package:get/get.dart';

class FarmaciaScreenController extends GetxController {
  int bottomTabIndex = 0;

  setBottomTabIndex(int idx) {
    bottomTabIndex = idx;
    update();
  }
}
