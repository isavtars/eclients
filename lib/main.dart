import 'package:flutter/material.dart';

import 'screen/email_send.dart';
import 'screen/home.dart';
import 'screen/onboard_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/home",
        routes: {
          "/home": (context) => const OnBoardScreen(),
          "/homesce": (context) => HomeScreen(),
          "/emailsend": (context) => EmailSender(),
        },
        home: const OnBoardScreen());
  }
}
