import 'package:flutter/material.dart';
import 'package:flutter_chatapp/model/contact.dart';

import '../constants.dart';
import '../widgets/contact_list.dart';
import '../dummyData/dummy_data.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home-screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.drag_indicator,
                          color: Colors.white, size: 32),
                      onPressed: () {}),
                  Text('BIPOLAR', style: kHeadTextStyle),
                  Spacer(),
                  IconButton(
                      icon: Icon(Icons.search, color: Colors.white, size: 28),
                      onPressed: () {}),
                ],
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Messages', style: kMedTextStyle),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    itemCount: contactList.length,
                    itemBuilder: (ctx, i) {
                      return ContactList(
                        id: contactList[i].id,
                        title: contactList[i].name,
                        image: contactList[i].image,
                        subtitle: contactList[i].lastMessage,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
