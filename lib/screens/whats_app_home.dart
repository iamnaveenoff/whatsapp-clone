import 'package:flutter/material.dart';

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);
  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
              PopupMenuButton(
                onSelected: (value) {
                  print(value);
                },
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Text("New group"),
                      value: "New group",
                    ),
                    const PopupMenuItem(
                      child: Text("New broadcast"),
                      value: "New broadcast",
                    ),
                    const PopupMenuItem(
                      child: Text("Whatsapp Web"),
                      value: "Whatsapp Web",
                    ),
                    const PopupMenuItem(
                      child: Text("Starred messages"),
                      value: "Starred messages",
                    ),
                    const PopupMenuItem(
                      child: Text("Settings"),
                      value: "Settings",
                    ),
                  ];
                },
              )
            ],
            title: const Text(
              'WhatsApp',
            ),
            bottom: TabBar(
              controller: _controller,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 2,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: const [
                Tab(icon: Icon(Icons.camera_alt_rounded)),
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS")
              ],
            ),
          ),
          body: TabBarView(
            controller: _controller,
            children: const [
              Text('Camera'),
              Text('Chats'),
              Text('Status'),
              Text('Calls'),
            ],
          )),
    );
  }
}
