import '../model/message_model.dart';

import '../model/contact.dart';

const List<Contact> contactList = [
  Contact(
    id: '0',
    image:
        "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80",
    name: 'Joe Wood',
    lastMessage: 'Typing...',
  ),
  Contact(
    id: '1',
    image:
        'https://images.unsplash.com/photo-1573488693582-260a6f1a51c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1356&q=80',
    name: 'Alix Cage',
    lastMessage: 'Talk to you later',
  ),
  Contact(
    id: '2',
    image:
        'https://images.unsplash.com/photo-1536057222397-e51989d3cb8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=639&q=80',
    name: 'Smith White',
    lastMessage: 'Bye',
  ),
  Contact(
    id: '3',
    image:
        'https://images.unsplash.com/photo-1558392204-ac78741f4abf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
    name: 'Sophia Geller',
    lastMessage: 'Hey!',
  ),
  Contact(
    id: '4',
    image:
        'https://images.unsplash.com/photo-1499557354967-2b2d8910bcca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1235&q=80',
    name: 'Jennifer',
    lastMessage: 'Miss You',
  ),
  Contact(
    id: '5',
    image:
        'https://images.unsplash.com/photo-1521235042493-c5bef89dc2c8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1385&q=80',
    name: 'Wilson',
    lastMessage: 'WOW 😲',
  ),
];

List<Message> messages = [
  Message(
    message: 'Hey!',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: 'Hey! buddy',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: 'After long time',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: '😄',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: 'Whatsupp',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: 'Nothing much',
    timeSent: '${DateTime.now()}',
  ),
  Message(
    message: 'Let\'s catchup tonight',
    timeSent: '${DateTime.now()}',
  ),
];
