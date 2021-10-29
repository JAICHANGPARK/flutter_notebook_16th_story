import 'package:flutter/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

class ColorIntConv implements JsonConverter<Color, int> {
  const ColorIntConv();
  static const Color defaultColor = Color.fromRGBO(0, 0, 0, 0);

  @override
  Color fromJson(int json) => defaultColor;

  @override
  int toJson(Color object) => object.value;

}