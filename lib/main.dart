import 'package:flutter/material.dart';
import 'package:mynewflutterloginproject/Log%20In.dart';
import 'package:mynewflutterloginproject/LoginS.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/Third': (context) =>const LoginS(),
      },
    );
  }
}

