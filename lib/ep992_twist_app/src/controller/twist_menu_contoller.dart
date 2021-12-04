import 'package:get/get.dart';

class TwistMenuController extends GetxController {
  int _bottomTab = 0;
  int get bottomTab => _bottomTab;
  setBottomTab(int i) {
    _bottomTab = i;
    update();
  }
}
