import 'package:flutter/material.dart';
import 'package:personal_information/project4/Homescen.dart';
import 'package:personal_information/project4/update.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

import 'add.dart';
import 'extrapage.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _pages = [Homescene(),Addinfo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: indexchangenotifer,
        builder: (context, int index, _) {
          return _pages[index];
        },
      )),
      bottomNavigationBar: BottomNavigation(),
      
    );
  }
}
