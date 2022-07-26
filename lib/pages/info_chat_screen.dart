import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class InfoChatScreen extends StatelessWidget{

  late final ChatModel chatModel;

  InfoChatScreen({required this.chatModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).primaryColor,
        title: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pop(context,"Hi ${chatModel.name}");
              },
              child: Icon(Icons.arrow_back,),
            ),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor:Colors.grey,
              backgroundImage: NetworkImage(chatModel.avatarUrl)
            ),
            SizedBox(
              width: 5,
            ),
            Text(chatModel.name,style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Chat Info "+chatModel.name),
          ],
        ),
      ),
    );
  }

}