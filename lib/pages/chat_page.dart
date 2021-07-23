import 'package:flutter/material.dart';
import 'package:whatsapp_app_ui/widgets/chat_tile.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const FloatingActionButton(
        backgroundColor: Color(0XFF25D366),
        onPressed: null,
        child: Icon(Icons.chat),
      ),
      body: ListView(
        children: const [
          ChatTileWidget(),
          ChatTileWidget(),
          ChatTileWidget(),
          ChatTileWidget(),
        ],
      ),
    );
  }
}
