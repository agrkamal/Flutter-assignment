import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'audio.dart';
import '../constants.dart';
import '../widgets/image.dart';
import '../widgets/video.dart';
import '../dummyData/dummy_data.dart';

class Messages extends StatefulWidget {
  final String name;
  Messages({@required this.name});
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            for (var i = 0; i < messages.length; i++)
              container(
                i % 2 == 0 ? true : false,
                '${messages[i].message}',
                messages[i].timeSent,
              ),
            SizedBox(height: 10),
            UserImage(),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: AudioMessage(),
            ),
            SizedBox(height: 7),
            UserVideo(),
            SizedBox(height: 7),
          ],
        ),
      ),
    );
  }

  Widget container(bool isMe, String message, String time) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(!isMe ? 0 : 12),
            bottomRight: Radius.circular(isMe ? 0 : 12),
          ),
          color: isMe ? kPrimaryColor : Colors.white10,
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              message == 'Hey!' ? '$message ${widget.name}' : message,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              DateFormat.Hm().format(DateTime.now()),
              style: TextStyle(
                fontSize: 13,
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
