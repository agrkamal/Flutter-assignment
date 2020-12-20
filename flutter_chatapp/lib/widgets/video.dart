import 'package:flutter/material.dart';

import '../constants.dart';

class UserVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(0),
          ),
          color: kPrimaryColor,
        ),
        width: MediaQuery.of(context).size.width * 0.7,
        padding: EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            Image.network(
              'https://theinpaint.com/images/example-1-2.jpg',
              // width: MediaQuery.of(context).size.width * 0.6,
            ),
            Center(
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.black45,
                child: Icon(
                  Icons.play_arrow,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
