import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  ChatInput({Key? key}) : super(key: key);

  final chatMessageController = TextEditingController();

  void onSendButtonPressed() {
    print('\nChatMessage: ${chatMessageController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add, color: Colors.white)),
          Expanded(
              child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: 5,
            minLines: 1,
            controller: chatMessageController,
            textCapitalization: TextCapitalization.sentences,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: 'Type your message',
                hintStyle: TextStyle(color: Colors.yellow),
                border: InputBorder.none),
          )),
          IconButton(
              onPressed: onSendButtonPressed,
              icon: Icon(Icons.send, color: Colors.white))
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
    );
  }
}
