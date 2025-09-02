import 'package:flutter/material.dart';
import 'package:ninth/Screens/chatScreen.dart';
import 'package:ninth/Screens/registerScreen.dart';
import 'package:ninth/Screens/singInScreen.dart';
import 'package:ninth/consets.dart';

void main() {
  runApp(
    const Chat(),
  );
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ScreensName.SingInScreen.toString(): (context) => SingInScreen(),
        ScreensName.RegisterScreen.toString(): (context) => RegisterScreen(),
        ScreensName.chatScreen.toString():(context) => chatScreen(),
      },
      initialRoute: ScreensName.SingInScreen.toString(),
    );
  }
}
