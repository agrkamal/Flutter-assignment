import 'package:flutter/material.dart';

import '../screens/chat_screen.dart';
import '../constants.dart';

class ContactList extends StatefulWidget {
  ContactList({
    @required this.id,
    @required this.image,
    @required this.subtitle,
    @required this.title,
  });
  final String title;
  final String subtitle;
  final String image;
  final String id;

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: kMedTextStyle,
      ),
      subtitle: Text(
        widget.subtitle,
        style: TextStyle(
          color: widget.subtitle == 'Typing...' ? Colors.green : Colors.grey,
          fontWeight: widget.subtitle == 'Typing...' ? FontWeight.w700 : null,
        ),
      ),
      leading: GestureDetector(
        child: Hero(
          transitionOnUserGestures: true,
          tag: widget.id,
          child: CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(widget.image),
          ),
        ),
        onTap: () {
          showDialog(
            context: context,
            barrierColor: Colors.white12,
            builder: (context) {
              return Center(
                child: Container(
                  child: Hero(
                    transitionOnUserGestures: true,
                    tag: widget.id,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        widget.image,
                        fit: BoxFit.cover,
                        height: 300,
                        width: 250,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      trailing:
          (widget.subtitle == 'Typing...' || widget.subtitle == 'Miss You')
              ? Container(
                  width: 30,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.white, spreadRadius: 1),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('1', style: kMedTextStyle),
                )
              : null,
      onTap: () {
        Navigator.of(context).pushNamed(
          ChatScreen.routeName,
          arguments: widget.id,
        );
      },
    );
  }
}
