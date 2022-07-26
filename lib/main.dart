import 'package:flutter/material.dart';
import 'package:whatsapp/pages/camera_screen.dart';
import 'package:whatsapp/whatsapp_home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsAppUi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'MyFont',
        primaryColor: Color(0xff075e54)
        ,colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xff25d366)),
      ),
      routes: {
        "/setting":(context)=> CameraScreen(),
        "/camera":(context)=> CameraScreen(),
      },
      home: WhatsAppHome(),
    );
  }
}



