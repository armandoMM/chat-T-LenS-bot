import 'package:chat_tlens_bot/Theme/app_theme.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _chatBubble() {
    return Column(
      children: [
        Container(
          alignment: Alignment.topRight,
          child: Container(
            constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: AppTheme.secondary,
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Text(
              'testo prueba sdkfjnddsnklsjfnkjdsfnv jdsknfdjkdnsf ',
              style: TextStyle(color: AppTheme.textPrimary, fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }

  _sendMessageArea() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
              child: TextField(
            style: TextStyle(fontWeight: FontWeight.w300),
            decoration: InputDecoration.collapsed(hintText: 'Escribe...'),
            textCapitalization: TextCapitalization.sentences,
          )),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
            iconSize: 25,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Inbox')),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(15),
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return _chatBubble();
                },
              ),
            ),
            _sendMessageArea(),
          ],
        ));
  }
}
