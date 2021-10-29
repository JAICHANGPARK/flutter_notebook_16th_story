
import 'package:freezed_annotation/freezed_annotation.dart';

part 'today_task.freezed.dart';
part 'today_task.g.dart';

@freezed
class TodayTask with _$TodayTask {
  factory TodayTask({
    List<String>? tags,
    String? title,
    String? date,
    String? time,
    bool? isCompleted,
  }) = _TodayTask;

  factory TodayTask.fromJson(Map<String, dynamic> json) => _$TodayTaskFromJson(json);

}
