import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BankTabState extends Equatable {}

class BankTabCubit extends Cubit<int> {
  BankTabCubit() : super(0);

  setTab(int value) {
    emit(value);
  }
}
