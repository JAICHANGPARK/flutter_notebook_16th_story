

import 'package:freezed_annotation/freezed_annotation.dart';


@freezed
class Workout with _$Workout{
  factory Workout({
    String? thumbImg,
    String? title,
    String? subtitle,
    String? time,
}) = _Workout;
}