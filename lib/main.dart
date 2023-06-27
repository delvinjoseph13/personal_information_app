import 'package:flutter/material.dart';
import 'package:personal_information/project4/add.dart';
import 'package:personal_information/project4/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/':(context) => HomeScreen(),
        '/add':(context) => Addinfo(),
      },
     
    );
  }
}

