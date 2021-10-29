
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'color_converter.dart';
part 'today_task.freezed.dart';
part 'today_task.g.dart';

@freezed
class TodayTask with _$TodayTask {
  const factory TodayTask({
    List<String>? tags,
    String? title,
    String? date,
    String? time,
    bool? isCompleted,
    String? remindAt,
    @ColorIntConv()
    @Default(ColorIntConv.defaultColor)
    @JsonKey()
    Color backgroundColorRGB,
  }) = _TodayTask;

  factory TodayTask.fromJson(Map<String, dynamic> json) =>
      _$TodayTaskFromJson(json);
}
