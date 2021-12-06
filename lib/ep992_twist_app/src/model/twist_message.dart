import 'package:freezed_annotation/freezed_annotation.dart';

class TwistMessage with _$TwistMessage {
  factory TwistMessage({
    String? name,
    @Default([]) List<String> images,
  }) = _TwistMessage;
}
