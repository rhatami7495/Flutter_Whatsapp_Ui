import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: fakeData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              index == 0
                  ? Container()
                  : Divider(
                      height: 10,
                    ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(fakeData[index].avatarUrl),
                  backgroundColor: Colors.grey,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      fakeData[index].name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      fakeData[index].time,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    fakeData[index].message,
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                ),
              )
            ],
          );
        });
  }
}
