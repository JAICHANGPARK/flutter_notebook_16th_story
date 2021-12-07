// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'trash.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TrashTearOff {
  const _$TrashTearOff();

  _Trash call({String? title, String? subtitle}) {
    return _Trash(
      title: title,
      subtitle: subtitle,
    );
  }
}

/// @nodoc
const $Trash = _$TrashTearOff();

/// @nodoc
mixin _$Trash {
  String? get title => throw _privateConstructorUsedError;
  String? get subtitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrashCopyWith<Trash> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrashCopyWith<$Res> {
  factory $TrashCopyWith(Trash value, $Res Function(Trash) then) =
      _$TrashCopyWithImpl<$Res>;
  $Res call({String? title, String? subtitle});
}

/// @nodoc
class _$TrashCopyWithImpl<$Res> implements $TrashCopyWith<$Res> {
  _$TrashCopyWithImpl(this._value, this._then);

  final Trash _value;
  // ignore: unused_field
  final $Res Function(Trash) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$TrashCopyWith<$Res> implements $TrashCopyWith<$Res> {
  factory _$TrashCopyWith(_Trash value, $Res Function(_Trash) then) =
      __$TrashCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? subtitle});
}

/// @nodoc
class __$TrashCopyWithImpl<$Res> extends _$TrashCopyWithImpl<$Res>
    implements _$TrashCopyWith<$Res> {
  __$TrashCopyWithImpl(_Trash _value, $Res Function(_Trash) _then)
      : super(_value, (v) => _then(v as _Trash));

  @override
  _Trash get _value => super._value as _Trash;

  @override
  $Res call({
    Object? title = freezed,
    Object? subtitle = freezed,
  }) {
    return _then(_Trash(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      subtitle: subtitle == freezed
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Trash implements _Trash {
  _$_Trash({this.title, this.subtitle});

  @override
  final String? title;
  @override
  final String? subtitle;

  @override
  String toString() {
    return 'Trash(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Trash &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subtitle, subtitle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subtitle));

  @JsonKey(ignore: true)
  @override
  _$TrashCopyWith<_Trash> get copyWith =>
      __$TrashCopyWithImpl<_Trash>(this, _$identity);
}

abstract class _Trash implements Trash {
  factory _Trash({String? title, String? subtitle}) = _$_Trash;

  @override
  String? get title;
  @override
  String? get subtitle;
  @override
  @JsonKey(ignore: true)
  _$TrashCopyWith<_Trash> get copyWith => throw _privateConstructorUsedError;
}
