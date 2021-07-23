import 'package:flutter/material.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              radius: 23,
              backgroundColor: Colors.grey,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 5.5, 0, 0),
                child: Icon(
                  Icons.person,
                  size: 48,
                  color: Colors.white,
                ),
              ),
            ),
            title: const Text(
              'Naveen Kumar',
              style: TextStyle(
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
                Text("Developed by Naveen"),
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
