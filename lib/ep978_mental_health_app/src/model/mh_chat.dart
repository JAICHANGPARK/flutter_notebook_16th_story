import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mh_chat.freezed.dart';

@freezed
class MhChat with _$MhChat {
  factory MhChat({String? uid, String? profileImg, String? msg, bool? isSend}) = _MhChat;
}
