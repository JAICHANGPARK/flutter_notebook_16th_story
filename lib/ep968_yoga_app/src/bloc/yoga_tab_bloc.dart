import 'package:flutter_bloc/flutter_bloc.dart';

class YogaBottomTabBlock extends Cubit<int> {
  YogaBottomTabBlock() : super(0);

  setTabIndex(int idx) {
    emit(idx);
  }
}
