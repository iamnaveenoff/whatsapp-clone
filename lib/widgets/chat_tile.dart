import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_app_ui/model/chat_model.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({Key? key, required this.chatModel}) : super(key: key);

  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(
                "assets/person.svg",
                color: Colors.white,
                height: 36,
                width: 36,
              ),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(
              chatModel.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            subtitle: Row(
              children: const [
                Icon(
                  Icons.done_all,
                  size: 15,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(chatModel.currentMessage),
              ],
            ),
            trailing: const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Text("6:02 pm"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 80),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
