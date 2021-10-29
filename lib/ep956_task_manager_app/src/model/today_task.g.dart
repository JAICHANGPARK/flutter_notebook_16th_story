// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'today_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodayTask _$$_TodayTaskFromJson(Map<String, dynamic> json) => _$_TodayTask(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      title: json['title'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      isCompleted: json['isCompleted'] as bool?,
    );

Map<String, dynamic> _$$_TodayTaskToJson(_$_TodayTask instance) =>
    <String, dynamic>{
      'tags': instance.tags,
      'title': instance.title,
      'date': instance.date,
      'time': instance.time,
      'isCompleted': instance.isCompleted,
    };
