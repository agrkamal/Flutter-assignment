import 'package:flutter/material.dart';

import '../constants.dart';

class UserImage extends StatelessWidget {
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
      padding: EdgeInsets.all(10),
      child: Image.network(
        'https://img-cdn.tnwcdn.com/image?fit=1280%2C720&url=https%3A%2F%2Fcdn0.tnwcdn.com%2Fwp-content%2Fblogs.dir%2F1%2Ffiles%2F2019%2F05%2FAsusProduo.jpg&signature=ff1b7239a741beaa31a1cd5cfe07b841',
        width: MediaQuery.of(context).size.width * 0.6,
      ),
    );
  }
}
