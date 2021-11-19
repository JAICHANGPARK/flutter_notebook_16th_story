import 'package:freezed_annotation/freezed_annotation.dart';

part 'trash.freezed.dart';

@freezed
class Trash with _$Trash {
  factory Trash({String? title, String? subtitle}) = _Trash;
}
