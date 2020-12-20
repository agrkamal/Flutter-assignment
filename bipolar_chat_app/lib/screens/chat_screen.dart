import 'package:flutter/material.dart';

import '../dummyData/dummy_data.dart';
import '../widgets/message.dart';
import '../constants.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat-screen';
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments;
    final ids = int.parse(id);

    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leadingWidth: 24,
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(contactList[ids].image),
                radius: 22,
              ),
              SizedBox(width: 10),
              Text(contactList[ids].name, style: kMedTextStyle),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.videocam, size: 28),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, size: 28),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Container(
          padding: EdgeInsets.only(top: 15, bottom: 11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Messages(name: contactList[ids].name),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor, width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: kPrimaryColor.withOpacity(0.5),
                ),
                margin: EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.attachment,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          barrierColor: Colors.black87,
                          builder: (BuildContext context) => AlertDialog(
                            backgroundColor: Colors.white24,
                            content: Container(
                              height: 60,
                              width: double.infinity,
                              // color: Colors.white24,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  IconButton(
                                    icon: Icon(
                                      Icons.image,
                                      size: 36,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.video_collection,
                                      size: 36,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.dashboard_customize,
                                      size: 36,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(
                                      Icons.file_copy,
                                      size: 36,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Type a message',
                          hintStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Image.asset(
                          'assets/images/send (1).png',
                          // color: Colors.deepPurple,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
