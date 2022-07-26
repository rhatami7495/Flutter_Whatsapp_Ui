import 'package:flutter/material.dart';
import 'package:whatsapp/pages/camera_screen.dart';

class CreateChatScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Create Chat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Create Chat"),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return CameraScreen();
              }));
            },
            child: Text("Next Page"),
            ),
            RaisedButton(onPressed: (){
              Navigator.pop(context);
            },
              child: Text("Return Page"),
            )
          ],
        ),
      ),
    );
  }

}