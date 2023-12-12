import 'package:flutter/material.dart';
import 'package:practise2/main3.dart';
import 'package:practise2/main4.dart';

import 'main1.dart';
class Showing extends StatelessWidget {
  const Showing({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     body: Stack(
       children: [

DrawerScreen(),
         BottomNavigationScreen(),
       ],
     ),
    );
  }
}
