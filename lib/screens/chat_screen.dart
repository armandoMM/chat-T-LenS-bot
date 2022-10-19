import 'package:chat_tlens_bot/Theme/app_theme.dart';
import 'package:chat_tlens_bot/models/models.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Message> messages = [];
  late String message;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  _chatBubble(String msg) {
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
            child: Text(
              msg,
              style: const TextStyle(color: AppTheme.textPrimary, fontSize: 16),
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
          Expanded(
              child: TextField(
            controller: _controller,
            style: const TextStyle(fontWeight: FontWeight.w300),
            decoration: const InputDecoration.collapsed(hintText: 'Escribe...'),
            textCapitalization: TextCapitalization.sentences,
          )),
          IconButton(
            onPressed: () {
              message = _controller.text;
              messages.add(Message(msg: message));
              _controller.clear();
              setState(() {});
            },
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
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  return _chatBubble(messages[index].msg);
                },
              ),
            ),
            _sendMessageArea(),
          ],
        ));
  }
}
