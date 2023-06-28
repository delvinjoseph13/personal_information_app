import 'package:flutter/material.dart';
import 'package:personal_information/project4/add.dart';
import 'package:personal_information/project4/home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

