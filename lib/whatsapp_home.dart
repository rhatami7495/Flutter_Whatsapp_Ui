import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => WhatsappHomeState();
}

class WhatsappHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("WhatsApp"),
        elevation: 5,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ],
        ),
        actions: [
          Icon(Icons.search),
          PopupMenuButton<String>(
              onSelected: (String choose) {},
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(value: "new_group", child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("New Group")
                    ],
                  )),
                  PopupMenuItem(value: "setting", child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Setting")
                    ],
                  ))
                ];
              })
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          CameraScreen(),
          ChatScreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
