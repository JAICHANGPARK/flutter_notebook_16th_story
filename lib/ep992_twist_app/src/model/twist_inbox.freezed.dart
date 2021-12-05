// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twist_inbox.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TwistInboxTearOff {
  const _$TwistInboxTearOff();

  _TwistInbox call(
      {String? title,
      String? subtitle,
      String? tag,
      String? img,
      DateTime? dateTime}) {
    return _TwistInbox(
      title: title,
      subtitle: subtitle,
      tag: tag,
      img: img,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $TwistInbox = _$TwistInboxTearOff();

/// @nodoc
mixin _$TwistInbox {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwistInboxCopyWith<TwistInbox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwistInboxCopyWith<$Res> {
  factory $TwistInboxCopyWith(
          TwistInbox value, $Res Function(TwistInbox) then) =
      _$TwistInboxCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? subtitle,
      String? tag,
      String? img,
      DateTime? dateTime});
}

/// @nodoc
class _$TwistInboxCopyWithImpl<$Res> implements $TwistInboxCopyWith<$Res> {
  _$TwistInboxCopyWithImpl(this._value, this._then);

  final TwistInbox _value;
  // ignore: unused_field
  final $Res Function(TwistInbox) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? tag = freezed,
    Object? img = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TwistInboxCopyWith<$Res> implements $TwistInboxCopyWith<$Res> {
  factory _$TwistInboxCopyWith(
          _TwistInbox value, $Res Function(_TwistInbox) then) =
      __$TwistInboxCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? subtitle,
      String? tag,
      String? img,
      DateTime? dateTime});
}

/// @nodoc
class __$TwistInboxCopyWithImpl<$Res> extends _$TwistInboxCopyWithImpl<$Res>
    implements _$TwistInboxCopyWith<$Res> {
  __$TwistInboxCopyWithImpl(
      _TwistInbox _value, $Res Function(_TwistInbox) _then)
      : super(_value, (v) => _then(v as _TwistInbox));

  @override
  _TwistInbox get _value => super._value as _TwistInbox;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? tag = freezed,
    Object? img = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_TwistInbox(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TwistInbox implements _TwistInbox {
  _$_TwistInbox({this.title, this.subtitle, this.tag, this.img, this.dateTime});

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? tag;
  @override
  final String? img;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'TwistInbox(title: $title, subtitle: $subtitle, tag: $tag, img: $img, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TwistInbox &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, subtitle, tag, img, dateTime);

  @JsonKey(ignore: true)
  @override
  _$TwistInboxCopyWith<_TwistInbox> get copyWith =>
      __$TwistInboxCopyWithImpl<_TwistInbox>(this, _$identity);
}

abstract class _TwistInbox implements TwistInbox {
  factory _TwistInbox(
      {String? title,
      String? subtitle,
      String? tag,
      String? img,
      DateTime? dateTime}) = _$_TwistInbox;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get tag;
  @override
  String? get img;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$TwistInboxCopyWith<_TwistInbox> get copyWith =>
      throw _privateConstructorUsedError;
}
