import 'package:flutter/cupertino.dart';

class Message {
  Message({
    @required this.message,
    @required this.timeSent,
  });
  final String message;
  final String timeSent;
}
