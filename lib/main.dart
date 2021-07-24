import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app_ui/screens/camera_screen.dart';
import 'package:whatsapp_app_ui/screens/whats_app_home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
