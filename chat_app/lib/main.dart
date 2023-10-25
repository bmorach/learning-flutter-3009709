import 'package:chat_app/counter_statful_demo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ChatApp());
}

class ChatApp extends StatelessWidget {
  const ChatApp();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Chat app!!',
      theme: ThemeData(primaryColor: Colors.deepOrange),
      home: CounterStateful(),
    );
  }
}

// TODO Create ChatApp widget
// TODO Create LoginPage widget
