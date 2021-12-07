// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twist_channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TwistChannelTearOff {
  const _$TwistChannelTearOff();

  _TwistChannel call(
      {String? title, String? subtitle, String? img, DateTime? dateTime}) {
    return _TwistChannel(
      title: title,
      subtitle: subtitle,
      img: img,
      dateTime: dateTime,
    );
  }
}

/// @nodoc
const $TwistChannel = _$TwistChannelTearOff();

/// @nodoc
mixin _$TwistChannel {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwistChannelCopyWith<TwistChannel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwistChannelCopyWith<$Res> {
  factory $TwistChannelCopyWith(
          TwistChannel value, $Res Function(TwistChannel) then) =
      _$TwistChannelCopyWithImpl<$Res>;
  $Res call({String? title, String? subtitle, String? img, DateTime? dateTime});
}

/// @nodoc
class _$TwistChannelCopyWithImpl<$Res> implements $TwistChannelCopyWith<$Res> {
  _$TwistChannelCopyWithImpl(this._value, this._then);

  final TwistChannel _value;
  // ignore: unused_field
  final $Res Function(TwistChannel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
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
abstract class _$TwistChannelCopyWith<$Res>
    implements $TwistChannelCopyWith<$Res> {
  factory _$TwistChannelCopyWith(
          _TwistChannel value, $Res Function(_TwistChannel) then) =
      __$TwistChannelCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? subtitle, String? img, DateTime? dateTime});
}

/// @nodoc
class __$TwistChannelCopyWithImpl<$Res> extends _$TwistChannelCopyWithImpl<$Res>
    implements _$TwistChannelCopyWith<$Res> {
  __$TwistChannelCopyWithImpl(
      _TwistChannel _value, $Res Function(_TwistChannel) _then)
      : super(_value, (v) => _then(v as _TwistChannel));

  @override
  _TwistChannel get _value => super._value as _TwistChannel;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
    Object? img = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_TwistChannel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
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

class _$_TwistChannel implements _TwistChannel {
  _$_TwistChannel({this.title, this.subtitle, this.img, this.dateTime});

  @override
  final String? title;
  @override
  final String? subtitle;
  @override
  final String? img;
  @override
  final DateTime? dateTime;

  @override
  String toString() {
    return 'TwistChannel(title: $title, subtitle: $subtitle, img: $img, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TwistChannel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality().equals(other.dateTime, dateTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(dateTime));

  @JsonKey(ignore: true)
  @override
  _$TwistChannelCopyWith<_TwistChannel> get copyWith =>
      __$TwistChannelCopyWithImpl<_TwistChannel>(this, _$identity);
}

abstract class _TwistChannel implements TwistChannel {
  factory _TwistChannel(
      {String? title,
      String? subtitle,
      String? img,
      DateTime? dateTime}) = _$_TwistChannel;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  String? get img;
  @override
  DateTime? get dateTime;
  @override
  @JsonKey(ignore: true)
  _$TwistChannelCopyWith<_TwistChannel> get copyWith =>
      throw _privateConstructorUsedError;
}
