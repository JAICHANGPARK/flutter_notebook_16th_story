// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'today_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodayTask _$TodayTaskFromJson(Map<String, dynamic> json) {
  return _TodayTask.fromJson(json);
}

/// @nodoc
class _$TodayTaskTearOff {
  const _$TodayTaskTearOff();

  _TodayTask call(
      {List<String>? tags,
      String? title,
      String? date,
      String? time,
      bool? isCompleted,
      String? remindAt}) {
    return _TodayTask(
      tags: tags,
      title: title,
      date: date,
      time: time,
      isCompleted: isCompleted,
      remindAt: remindAt,
    );
  }

  TodayTask fromJson(Map<String, Object?> json) {
    return TodayTask.fromJson(json);
  }
}

/// @nodoc
const $TodayTask = _$TodayTaskTearOff();

/// @nodoc
mixin _$TodayTask {
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;
  String? get remindAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodayTaskCopyWith<TodayTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayTaskCopyWith<$Res> {
  factory $TodayTaskCopyWith(TodayTask value, $Res Function(TodayTask) then) =
      _$TodayTaskCopyWithImpl<$Res>;
  $Res call(
      {List<String>? tags,
      String? title,
      String? date,
      String? time,
      bool? isCompleted,
      String? remindAt});
}

/// @nodoc
class _$TodayTaskCopyWithImpl<$Res> implements $TodayTaskCopyWith<$Res> {
  _$TodayTaskCopyWithImpl(this._value, this._then);

  final TodayTask _value;
  // ignore: unused_field
  final $Res Function(TodayTask) _then;

  @override
  $Res call({
    Object? tags = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? isCompleted = freezed,
    Object? remindAt = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      remindAt: remindAt == freezed
          ? _value.remindAt
          : remindAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TodayTaskCopyWith<$Res> implements $TodayTaskCopyWith<$Res> {
  factory _$TodayTaskCopyWith(
          _TodayTask value, $Res Function(_TodayTask) then) =
      __$TodayTaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? tags,
      String? title,
      String? date,
      String? time,
      bool? isCompleted,
      String? remindAt});
}

/// @nodoc
class __$TodayTaskCopyWithImpl<$Res> extends _$TodayTaskCopyWithImpl<$Res>
    implements _$TodayTaskCopyWith<$Res> {
  __$TodayTaskCopyWithImpl(_TodayTask _value, $Res Function(_TodayTask) _then)
      : super(_value, (v) => _then(v as _TodayTask));

  @override
  _TodayTask get _value => super._value as _TodayTask;

  @override
  $Res call({
    Object? tags = freezed,
    Object? title = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? isCompleted = freezed,
    Object? remindAt = freezed,
  }) {
    return _then(_TodayTask(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      remindAt: remindAt == freezed
          ? _value.remindAt
          : remindAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodayTask implements _TodayTask {
  _$_TodayTask(
      {this.tags,
      this.title,
      this.date,
      this.time,
      this.isCompleted,
      this.remindAt});

  factory _$_TodayTask.fromJson(Map<String, dynamic> json) =>
      _$$_TodayTaskFromJson(json);

  @override
  final List<String>? tags;
  @override
  final String? title;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final bool? isCompleted;
  @override
  final String? remindAt;

  @override
  String toString() {
    return 'TodayTask(tags: $tags, title: $title, date: $date, time: $time, isCompleted: $isCompleted, remindAt: $remindAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodayTask &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.remindAt, remindAt) ||
                other.remindAt == remindAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tags),
      title,
      date,
      time,
      isCompleted,
      remindAt);

  @JsonKey(ignore: true)
  @override
  _$TodayTaskCopyWith<_TodayTask> get copyWith =>
      __$TodayTaskCopyWithImpl<_TodayTask>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodayTaskToJson(this);
  }
}

abstract class _TodayTask implements TodayTask {
  factory _TodayTask(
      {List<String>? tags,
      String? title,
      String? date,
      String? time,
      bool? isCompleted,
      String? remindAt}) = _$_TodayTask;

  factory _TodayTask.fromJson(Map<String, dynamic> json) =
      _$_TodayTask.fromJson;

  @override
  List<String>? get tags;
  @override
  String? get title;
  @override
  String? get date;
  @override
  String? get time;
  @override
  bool? get isCompleted;
  @override
  String? get remindAt;
  @override
  @JsonKey(ignore: true)
  _$TodayTaskCopyWith<_TodayTask> get copyWith =>
      throw _privateConstructorUsedError;
}
