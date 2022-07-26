import 'package:flutter/material.dart';
import 'package:whatsapp/pages/call_screen.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/pages/chat_screen.dart';
import 'package:whatsapp/pages/status_screen.dart';


class WhatsAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => WhatsappHomeState();
}

class WhatsappHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(initialIndex:1,length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff075e54),
        title:  Text("WhatsApp"),
        elevation: 5,
        bottom: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt)
            ),
            Tab(text:"Chats"),
            Tab(text:"Status"),
            Tab(text:"Calls"),
          ],
        ),
        actions:  [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8),
          child:
            Icon(Icons.more_vert)
            ,),
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
    );
  }


}