import 'package:freezed_annotation/freezed_annotation.dart';

part 'twist_channel.freezed.dart';

@freezed
class TwistChannel with _$TwistChannel {
  factory TwistChannel({
    String? title,
    String? subtitle,
    String? img,
    DateTime? dateTime,
  }) = _TwistChannel;
}
