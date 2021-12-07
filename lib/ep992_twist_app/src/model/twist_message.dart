import 'package:freezed_annotation/freezed_annotation.dart';

part 'twist_message.freezed.dart';

@freezed
class TwistMessage with _$TwistMessage {
  factory TwistMessage({
    String? name,
    @Default([]) List<String> images,
    DateTime? dateTime,
    String? subtitle,
  }) = _TwistMessage;
}
