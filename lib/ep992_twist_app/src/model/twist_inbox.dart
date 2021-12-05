import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class TwistInbox with _$TwistInbox {
  factory TwistInbox({
    String? title,
    String? subtitle,
    String? tag,
    String? img,
    DateTime? dateTime,
  }) = _TwistInbox;
}
