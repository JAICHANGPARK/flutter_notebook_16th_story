// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutTearOff {
  const _$WorkoutTearOff();

  _Workout call(
      {String? thumbImg, String? title, String? subtitle, String? time}) {
    return _Workout(
      thumbImg: thumbImg,
      title: title,
      subtitle: subtitle,
      time: time,
    );
  }
}

/// @nodoc
const $Workout = _$WorkoutTearOff();

/// @nodoc
mixin _$Workout {
  String? get thumbImg => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call({String? thumbImg, String? title, String? subtitle, String? time});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object? thumbImg = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      thumbImg: thumbImg == freezed
          ? _value.thumbImg
          : thumbImg // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) then) =
      __$WorkoutCopyWithImpl<$Res>;
  @override
  $Res call({String? thumbImg, String? title, String? subtitle, String? time});
}

/// @nodoc
class __$WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(_Workout _value, $Res Function(_Workout) _then)
      : super(_value, (v) => _then(v as _Workout));

  @override
  _Workout get _value => super._value as _Workout;

  @override
  $Res call({
    Object? thumbImg = freezed,
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? time = freezed,
  }) {
    return _then(_Workout(
      thumbImg: thumbImg == freezed
          ? _value.thumbImg
          : thumbImg // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Workout implements _Workout {
  _$_Workout({this.thumbImg, this.title, this.subtitle, this.time});

  @override
  final String? thumbImg;
  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? time;

  @override
  String toString() {
    return 'Workout(thumbImg: $thumbImg, title: $title, subtitle: $subtitle, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Workout &&
            (identical(other.thumbImg, thumbImg) ||
                other.thumbImg == thumbImg) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.time, time) || other.time == time));
  }

  @override
  int get hashCode => Object.hash(runtimeType, thumbImg, title, subtitle, time);

  @JsonKey(ignore: true)
  @override
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);
}

abstract class _Workout implements Workout {
  factory _Workout(
      {String? thumbImg,
      String? title,
      String? subtitle,
      String? time}) = _$_Workout;

  @override
  String? get thumbImg;
  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get time;
  @override
  @JsonKey(ignore: true)
  _$WorkoutCopyWith<_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
