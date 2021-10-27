import 'package:get/get.dart';

class BodyPageController extends GetxController {
  int _tabIndex = 0;

  increment() => _tabIndex++;

  int get getTabIndex => _tabIndex;

  set tabIndex(int idx) => _tabIndex = idx;

  void setTabIndex(int idx) {
    _tabIndex = idx;
    update();
  }
}
