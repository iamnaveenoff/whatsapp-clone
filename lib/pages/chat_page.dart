import 'package:flutter/material.dart';
import 'package:whatsapp_app_ui/model/chat_model.dart';
import 'package:whatsapp_app_ui/widgets/chat_tile.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Naveen Kumar",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
    ),
    ChatModel(
      name: "Testing",
      isGroup: true,
      currentMessage: "Its Flutter Clone",
      time: "13:00",
    ),
    ChatModel(
      name: "Working Perfect",
      isGroup: true,
      currentMessage: "Lets Rock",
      time: "2:30",
    ),
    ChatModel(
      name: "WhatsApp UI Clone",
      isGroup: true,
      currentMessage: "Lets Rock",
      time: "8:30",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
        backgroundColor: Color(0XFF25D366),
        onPressed: null,
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) => ChatTileWidget(
          chatModel: chats[index],
        ),
      ),
    );
  }
}
