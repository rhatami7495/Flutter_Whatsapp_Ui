import 'package:flutter/material.dart';
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
        primaryColor: Color(0xff075e54)
      ),
      home: WhatsAppHome(),
    );
  }
}



