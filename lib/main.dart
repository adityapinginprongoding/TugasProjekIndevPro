import 'package:flutter/material.dart';
import 'package:projektes/pages/auth/signin.dart';
import 'package:projektes/pages/auth/signup.dart';
import 'package:projektes/pages/chatDetail.dart';
import 'package:projektes/pages/home/mainPage.dart';
import 'package:projektes/pages/product_page.dart';
import 'package:projektes/pages/splasscren.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        '/sighin': (context) => SignIn(),
        '/signUp': (context) => SignUp(),
        '/home' : (context) => MainPage(),
        '/chat' : (context) => ChatDetail(),
        '/product' : (context) => ProductPage()
      },
    );
  }
}
