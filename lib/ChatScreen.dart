import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  List<ChatMessage> messages = [];
  ChatUser currentUser = ChatUser(id: "0", firstName: "Zain");
  ChatUser geminiUser = ChatUser(id: "1", firstName: "Gemini");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 203, 232),
        title: const Text(
          "Gemini Chat",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),
      body: _UIBuilder(),
    );
  }

  Widget _UIBuilder() {
    return DashChat(
      currentUser: currentUser,
      onSend: _SendMessage,
      messages: messages,
    );
  }
}

void _SendMessage(ChatMessage chatMessage) {}
