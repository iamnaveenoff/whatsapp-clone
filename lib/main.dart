import 'package:flutter/material.dart';
import 'package:whatsapp_app_ui/screens/whats_app_home.dart';

void main() {
  runApp(
    const WhatsAppUi(),
  );
}

class WhatsAppUi extends StatelessWidget {
  const WhatsAppUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primaryColor: const Color(0xFF075E54),
        fontFamily: "OpenSans",
        // visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WhatsAppHome(),
    );
  }
}
